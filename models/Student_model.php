<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Student_model extends CI_Model {

    public function get_students($limit, $offset) {
        $this->db->select('id, StudentID, FullName, Email, PhoneNumber, Address, DateOfBirth, Gender, Nationality, AdmissionDate, CurrentCoursesEnrolled, CourseFees');
        $this->db->limit($limit, $offset);
        $query = $this->db->get('student_info');
        return $query->result();
    }

    public function count_students() {//to count the total number of students
        return $this->db->count_all('student_info');
    }
}
