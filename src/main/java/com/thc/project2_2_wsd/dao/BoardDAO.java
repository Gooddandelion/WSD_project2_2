package com.thc.project2_2_wsd.dao;

import com.thc.project2_2_wsd.bean.BoardVO;
import com.thc.project2_2_wsd.common.JDBCUtill;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BoardDAO {

    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    private final String BOARD_INSERT = "insert into BOARD(title, writer, content) values(?,?,?)";

    public int insertBoard(BoardVO vo) {
        try {
            con = JDBCUtill.getConnection();
            pstmt = con.prepareStatement(BOARD_INSERT);
            pstmt.setString(1, vo.getTitle());
            pstmt.setString(2, vo.getWriter());
            pstmt.setString(3, vo.getContent());
            pstmt.executeUpdate();

            return 1;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
