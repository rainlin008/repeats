classdef imagedb < handle
    properties
        cass
    end

    methods
        function this = imagedb()
            this.cass = Cass();
        end
        
        function cid = insert_img(this,url)
            filecontents = get_native_img(url);
            cid = HASH.img(filecontents);
            this.insert('image',cid,'raw',filecontents);
        end
        
        function img = select_img(this,cid)
            img = [];
            has_img = this.check('image',cid,'raw');
            if has_img
                filecontent = this.select('image',cid,'raw');
                sql = sqldb();
                sql.open;
                url = sql.get_img_url(cid);
                [~,~,ext] = fileparts(url);
                if strcmp(ext,'.png') || strcmp(ext,'.PNG')
                    fid = fopen('tmpimpng','w');
                    fwrite(fid,filecontent);
                    fclose(fid);
                    img = imread('tmpimpng');
                    delete('tmpimpng');
                else
                    img = readim(filecontent);
                end
            end
        end
        
        function [] =  insert(this,table,img_id,key,data)
            this.cass.put(img_id,data,[table ':' key],[]); 
        end

        function [s,is_found] = select(this,table,img_id,cfg_key)
            s = [];
            is_found = false;

            %            try
                is_found = this.cass.check(img_id,[table ':' cfg_key], ...
                                                 []);
                if is_found
                    s = this.cass.get(img_id,[table ':' cfg_key],[]); 
                end
%            catch err
%                disp(err.message);
%            end
        end

        function [is_found] = check(this,table,img_id,cfg_key)
            is_found = this.cass.check(img_id,[table ':' cfg_key],[]);
        end

    end
end