function [] = cvdb_ins_rnsc_trial(conn,  rnsc_id, ...
                                  sample, model, weights, errors, score)
    connh = conn.Handle;

    stm = connh.prepareStatement(['INSERT INTO rnsc_trials ' ...
                        '(rnsc_id, sample, model, weights, errors, score) ' ...
                        'VALUES(?,?,?,?,?,?)'], ...
                                 java.sql.Statement.RETURN_GENERATED_KEYS);
    
    stm.setInt(1, rnsc_id);
    stm.setBytes(2, typecast(double(sample(:)), 'uint8'));
    stm.setBytes(3, typecast(model(:), 'uint8'));
    stm.setBytes(4, typecast(double(weights(:)), 'uint8'));
    stm.setBytes(5, typecast(errors(:), 'uint8'));
    stm.setDouble(6, score);

    stm.execute();

