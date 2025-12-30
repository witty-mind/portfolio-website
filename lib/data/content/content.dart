import '../models/models.dart';
import '../../core/constants/constants.dart';

class PortfolioContent {
  static const String name = "Debasish";
  static const String role = "Software Engineer";
  static const String headline = "Building Scalable Mobile & AI Solutions.";
  static const String summary = '''
I've spent 10+ years convincing phones and computers to do useful things—mostly with Flutter, Android, and increasingly, AI that doesn't try to take over the world. Currently leading mobile engineering at Zebra Technologies, where I build enterprise apps that actually work (revolutionary, I know). I'm all about system design, clean architecture, smooth CI/CD, and making sure apps don't crash at the worst possible moment.
\nLately, I've been teaching apps to think for themselves—on-device LLMs, GenAI workflows, and privacy-first AI features that respect your data like it should be respected. I lead teams, mentor engineers, make architectural decisions that won't haunt us in six months, and occasionally remember to push my code before leaving for the day. If you're building AI-first products and need someone who writes solid code and knows how to ship it with a team, let's talk.''';

  static final List<String> topSkills = [
    "Flutter & Dart",
    "Native Android",
    "Generative AI",
    "System Design",
    "Team Leadership",
    "CI/CD"
  ];

  static final List<Skill> allSkills = [
    Skill(name: "Flutter", category: "Mobile"),
    Skill(name: "Android", category: "Mobile"),
    Skill(name: "Kotlin", category: "Mobile"),
    Skill(name: "Dart", category: "Mobile"),
    Skill(name: "iOS", category: "Mobile"),
    Skill(name: "Firebase", category: "Backend"),
    Skill(name: "Python", category: "Backend"),
    Skill(name: "SQL", category: "Backend"),
    Skill(name: "NoSQL", category: "Backend"),
    Skill(name: "Go", category: "Backend"),
    Skill(name: "Generative AI", category: "AI & LLM"),
    Skill(name: "On-Device LLM", category: "AI & LLM"),
    Skill(name: "Agentic AI", category: "AI & LLM"),
    Skill(name: "System Design", category: "Core"),
    Skill(name: "CI/CD", category: "Core"),
  ];

  static final List<Experience> experience = [
    Experience(
      company: "Zebra Technologies",
      role:
          "Software Engineering Supervisor \n\nFlutter | On-Device AI | System Design | Scalable Solutions",
      period: "2020 - Present",
      location: "Pune, India",
      responsibilities: [
        '''
Led a mobile team that shipped 95% on time and cut release prep by 60%—because life’s too short for manual builds. We slashed bugs by 40% and boosted test coverage to 78%, effectively outlawing the "works on my machine" excuse. I halved onboarding time by simplifying architecture and crushed 30% of tech debt simply by hitting the delete key. Between shipping privacy-first AI features and mentoring engineers who now code better than me, I built a culture where apps don't crash and panic is optional.

Built apps that don't crash, teams that don't panic, and AI features that actually work in production.
        ''',
      ],
    ),
    Experience(
      company: "Cranberry Analytics",
      role: "Senior Software Engineer \n\nAndroid | Kotlin | BaaS | CI/CD",
      period: "2018 - 2020",
      location: "Pune, India",
      responsibilities: [
        '''
I lead Android development using Kotlin and Java (mostly to keep the legacy ghosts at bay), optimizing apps to run buttery smooth on everything from flagships to low-end "potato" devices. I write scalable code that doesn't require a hazmat suit to maintain, collaborating with UX to ensure designs actually survive the transition to code. I proactively squash bugs before they become Jira tickets, obsess over security, and mentor juniors on why strict typing matters. Basically, I keep our stack from turning into a museum piece while ensuring the app doesn't drain your battery in ten minutes.
        ''',
      ],
    ),
    Experience(
      company: "Conlis Technology",
      role:
          "Software Engineer II \n\nKotlin | Mobile Architecture | Performance ",
      period: "2017 - 2018",
      location: "Pune, India",
      responsibilities: [
        '''
I led end-to-end Android development using Kotlin and MVVM, ensuring our architecture didn't look like a crime scene. I automated the boring stuff with CI/CD pipelines and managed Play Store releases without losing my mind. On the technical side, I optimized apps so they wouldn't double as hand warmers, built offline-first data layers for when the internet vanishes, and designed secure backend APIs just to make sure the data exchange wasn't a total disaster.
'''
      ],
    ),
    Experience(
      company: "Andolasoft Inc.",
      role: "Software Engineer I",
      period: "2014 - 2017",
      location: "Bhubaneshwar",
      responsibilities: [
        '''
I led the full Android lifecycle—building, publishing, and babysitting scalable apps. My specialty is FinTech, which means I integrate payment gateways without breaking a sweat (or the bank) and translate dense business jargon into robust code. I focus on seamless deployments and optimization because "production-grade" shouldn't just be a marketing buzzword.
        ''',
      ],
    ),
  ];

  static final List<Project> projects = [
    Project(
      title: "On-Device GenAI",
      description:
          "Privacy-centric AI solution using Gemma-2b running locally on Android. Reduced cloud costs by 40%.",
      techStack: "Android • MediaPipe • Gemma-2b",
    ),
    Project(
      title: "Trot",
      description:
          "Location-based social app for saving Points of Interest (POI) with real-time navigation.",
      techStack: "Android • Maps API • Firebase",
      link: "https://play.google.com/store/apps/details?id=cranberrynx.trot",
    ),
    Project(
      title: "Inventory Manager",
      description:
          "Enterprise Flutter app for warehouse management with offline support and barcode scanning.",
      techStack: "Flutter • SQLite • Zebra SDK",
    ),
  ];

  static final List<Blog> blogs = [
    Blog(
      title: "Technical Debt: The Hidden Cost of Moving Fast",
      description:
          "Why taking shortcuts today taxes your engineering team tomorrow, and how to manage the balance. Understanding the compound interest your codebase is quietly accumulating — and why it matters more than you think.",
      url: AppConstants.mediumBlogTwo,
      date: "Dec 26, 2025",
      readTime: "7 min",
    ),
    Blog(
      title:
          "Advanced Network Traffic Interception in Flutter Apps Using Frida and FlutterProxy",
      description:
          "A complete guide to intercepting network traffic in Flutter applications using Frida and FlutterProxy. Learn to set up, configure, and secure your Flutter app’s network for performance monitoring and debugging.",
      url: AppConstants.mediumBlogThree,
      date: "Nov 3, 2024",
      readTime: "4 min",
    ),
    Blog(
      title: "Running LLMs on Android Devices",
      description:
          "A deep dive into running Gemma-2b locally using MediaPipe for privacy-first AI experiences.",
      url: AppConstants.mediumBlogOne,
      date: "Oct 5, 2024",
      readTime: "6 min",
    ),
    Blog(
      title: "Running GitHub Actions Locally",
      description:
          "A complete guide to running GitHub Actions workflows on your local machine. Learn how to set up, configure, and troubleshoot your CI/CD pipelines without pushing code.",
      url: AppConstants.mediumBlogFour,
      date: "Apr 6, 2023",
      readTime: "4 min",
    ),
  ];
}
