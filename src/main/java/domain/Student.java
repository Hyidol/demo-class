package domain;

/**
 * @author Yuhua
 * @since 21.7.14 18:29
 */
public class Student {
    int id;
    String name;
    int classId;

    public Student() {
    }

    public Student(String name, int classId) {
        this.name = name;
        this.classId = classId;
    }

    public Student(int id, String name, int classId) {
        this.id = id;
        this.name = name;
        this.classId = classId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }
}