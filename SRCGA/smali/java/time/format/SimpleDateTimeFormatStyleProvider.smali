.class final Ljava/time/format/SimpleDateTimeFormatStyleProvider;
.super Ljava/time/format/DateTimeFormatStyleProvider;
.source "SimpleDateTimeFormatStyleProvider.java"


# static fields
.field private static final FORMATTER_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/format/SimpleDateTimeFormatStyleProvider;->FORMATTER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljava/time/format/SimpleDateTimeFormatStyleProvider;
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/format/DateTimeFormatStyleProvider;-><init>()V

    return-void
.end method

.method private convertStyle(Ljava/time/format/FormatStyle;)I
    .locals 3

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljava/time/format/SimpleDateTimeFormatStyleProvider;
    move-object v1, p1

    .local v1, "style":Ljava/time/format/FormatStyle;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/format/FormatStyle;->ordinal()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/format/SimpleDateTimeFormatStyleProvider;
    return v0
.end method


# virtual methods
.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljava/time/format/SimpleDateTimeFormatStyleProvider;
    invoke-static {}, Ljava/text/DateFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/SimpleDateTimeFormatStyleProvider;
    return-object v0
.end method

.method public getFormatter(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;Ljava/time/chrono/AbstractChronology;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .locals 14

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljava/time/format/SimpleDateTimeFormatStyleProvider;
    move-object v1, p1

    .local v1, "dateStyle":Ljava/time/format/FormatStyle;
    move-object/from16 v2, p2

    .local v2, "timeStyle":Ljava/time/format/FormatStyle;
    move-object/from16 v3, p3

    .local v3, "chrono":Ljava/time/chrono/AbstractChronology;
    move-object/from16 v4, p4

    .local v4, "locale":Ljava/util/Locale;
    move-object v10, v1

    if-nez v10, :cond_0

    move-object v10, v2

    if-nez v10, :cond_0

    .line 66
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-string v12, "Date and Time style must not both be null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 68
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v3

    invoke-virtual {v11}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x7c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x7c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 69
    .local v5, "key":Ljava/lang/String;
    sget-object v10, Ljava/time/format/SimpleDateTimeFormatStyleProvider;->FORMATTER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    move-object v11, v5

    invoke-interface {v10, v11}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v6, v10

    .line 70
    .local v6, "cached":Ljava/lang/Object;
    move-object v10, v6

    if-eqz v10, :cond_2

    .line 71
    move-object v10, v6

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 72
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-string v12, "Unable to convert DateFormat to DateTimeFormatter"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 74
    :cond_1
    move-object v10, v6

    check-cast v10, Ljava/time/format/DateTimeFormatter;

    move-object v0, v10

    .line 90
    .end local v0    # "this":Ljava/time/format/SimpleDateTimeFormatStyleProvider;
    :goto_0
    return-object v0

    .line 77
    .restart local v0    # "this":Ljava/time/format/SimpleDateTimeFormatStyleProvider;
    :cond_2
    move-object v10, v1

    if-eqz v10, :cond_4

    .line 78
    move-object v10, v2

    if-eqz v10, :cond_3

    .line 79
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Ljava/time/format/SimpleDateTimeFormatStyleProvider;->convertStyle(Ljava/time/format/FormatStyle;)I

    move-result v10

    move-object v11, v0

    move-object v12, v2

    invoke-direct {v11, v12}, Ljava/time/format/SimpleDateTimeFormatStyleProvider;->convertStyle(Ljava/time/format/FormatStyle;)I

    move-result v11

    move-object v12, v4

    invoke-static {v10, v11, v12}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v10

    move-object v7, v10

    .line 86
    .local v7, "dateFormat":Ljava/text/DateFormat;
    :goto_1
    move-object v10, v7

    instance-of v10, v10, Ljava/text/SimpleDateFormat;

    if-eqz v10, :cond_5

    .line 87
    move-object v10, v7

    check-cast v10, Ljava/text/SimpleDateFormat;

    invoke-virtual {v10}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 88
    .local v8, "pattern":Ljava/lang/String;
    new-instance v10, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v10

    move-object v9, v10

    .line 89
    .local v9, "formatter":Ljava/time/format/DateTimeFormatter;
    sget-object v10, Ljava/time/format/SimpleDateTimeFormatStyleProvider;->FORMATTER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    move-object v11, v5

    move-object v12, v9

    invoke-interface {v10, v11, v12}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 90
    move-object v10, v9

    move-object v0, v10

    goto :goto_0

    .line 81
    .end local v7    # "dateFormat":Ljava/text/DateFormat;
    .end local v8    # "pattern":Ljava/lang/String;
    .end local v9    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_3
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Ljava/time/format/SimpleDateTimeFormatStyleProvider;->convertStyle(Ljava/time/format/FormatStyle;)I

    move-result v10

    move-object v11, v4

    invoke-static {v10, v11}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v10

    move-object v7, v10

    .restart local v7    # "dateFormat":Ljava/text/DateFormat;
    goto :goto_1

    .line 84
    .end local v7    # "dateFormat":Ljava/text/DateFormat;
    :cond_4
    move-object v10, v0

    move-object v11, v2

    invoke-direct {v10, v11}, Ljava/time/format/SimpleDateTimeFormatStyleProvider;->convertStyle(Ljava/time/format/FormatStyle;)I

    move-result v10

    move-object v11, v4

    invoke-static {v10, v11}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v10

    move-object v7, v10

    .restart local v7    # "dateFormat":Ljava/text/DateFormat;
    goto :goto_1

    .line 92
    :cond_5
    sget-object v10, Ljava/time/format/SimpleDateTimeFormatStyleProvider;->FORMATTER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    move-object v11, v5

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 93
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-string v12, "Unable to convert DateFormat to DateTimeFormatter"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method
