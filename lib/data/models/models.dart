class Experience {
  final String company;
  final String role;
  final String period;
  final String location;
  final List<String> responsibilities;

  Experience({
    required this.company,
    required this.role,
    required this.period,
    required this.location,
    required this.responsibilities,
  });
}

class Project {
  final String title;
  final String description;
  final String techStack;
  final String? link;

  Project({
    required this.title,
    required this.description,
    required this.techStack,
    this.link,
  });
}

class Skill {
  final String name;
  final String category;

  Skill({required this.name, required this.category});
}

class EducationModel {
  final String institution;
  final String degree;
  final String year;

  EducationModel({
    required this.institution,
    required this.degree,
    required this.year,
  });
}

class Blog {
  final String title;
  final String description;
  final String url;
  final String date;
  final String readTime;

  Blog({
    required this.title,
    required this.description,
    required this.url,
    required this.date,
    required this.readTime,
  });
}
