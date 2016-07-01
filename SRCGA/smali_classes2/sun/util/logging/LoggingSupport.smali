.class public Lsun/util/logging/LoggingSupport;
.super Ljava/lang/Object;
.source "LoggingSupport.java"


# static fields
.field private static final DEFAULT_FORMAT:Ljava/lang/String; = "%1$tb %1$td, %1$tY %1$tl:%1$tM:%1$tS %1$Tp %2$s%n%4$s: %5$s%6$s%n"

.field private static final FORMAT_PROP_KEY:Ljava/lang/String; = "java.util.logging.SimpleFormatter.format"

.field private static final proxy:Lsun/util/logging/LoggingProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lsun/util/logging/LoggingSupport$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lsun/util/logging/LoggingSupport$1;-><init>()V

    .line 49
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/logging/LoggingProxy;

    sput-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/LoggingSupport;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureAvailable()V
    .locals 4

    .prologue
    .line 76
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/AssertionError;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "Should not here"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 78
    :cond_0
    return-void
.end method

.method public static getLevel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "logger":Ljava/lang/Object;
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 106
    sget-object v1, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    move-object v2, v0

    invoke-interface {v1, v2}, Lsun/util/logging/LoggingProxy;->getLevel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "logger":Ljava/lang/Object;
    return-object v0
.end method

.method public static getLevelName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "level":Ljava/lang/Object;
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 141
    sget-object v1, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    move-object v2, v0

    invoke-interface {v1, v2}, Lsun/util/logging/LoggingProxy;->getLevelName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "level":Ljava/lang/Object;
    return-object v0
.end method

.method public static getLevelValue(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "level":Ljava/lang/Object;
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 146
    sget-object v1, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    move-object v2, v0

    invoke-interface {v1, v2}, Lsun/util/logging/LoggingProxy;->getLevelValue(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    .end local v0    # "level":Ljava/lang/Object;
    return v0
.end method

.method public static getLogger(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 101
    sget-object v1, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    move-object v2, v0

    invoke-interface {v1, v2}, Lsun/util/logging/LoggingProxy;->getLogger(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "loggerName":Ljava/lang/String;
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 86
    sget-object v1, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    move-object v2, v0

    invoke-interface {v1, v2}, Lsun/util/logging/LoggingProxy;->getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "loggerName":Ljava/lang/String;
    return-object v0
.end method

.method public static getLoggerNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 82
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0}, Lsun/util/logging/LoggingProxy;->getLoggerNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "loggerName":Ljava/lang/String;
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 96
    sget-object v1, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    move-object v2, v0

    invoke-interface {v1, v2}, Lsun/util/logging/LoggingProxy;->getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "loggerName":Ljava/lang/String;
    return-object v0
.end method

.method public static getSimpleFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-static {v0}, Lsun/util/logging/LoggingSupport;->getSimpleFormat(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSimpleFormat(Z)Ljava/lang/String;
    .locals 10

    .prologue
    .line 160
    move v0, p0

    .local v0, "useProxy":Z
    new-instance v3, Lsun/util/logging/LoggingSupport$2;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Lsun/util/logging/LoggingSupport$2;-><init>()V

    .line 161
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    .line 168
    .local v1, "format":Ljava/lang/String;
    move v3, v0

    if-eqz v3, :cond_0

    sget-object v3, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_0

    .line 169
    sget-object v3, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    const-string v4, "java.util.logging.SimpleFormatter.format"

    invoke-interface {v3, v4}, Lsun/util/logging/LoggingProxy;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 172
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 175
    move-object v3, v1

    const/4 v4, 0x6

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Date;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x1

    const-string v7, ""

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x2

    const-string v7, ""

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x3

    const-string v7, ""

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x4

    const-string v7, ""

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x5

    const-string v7, ""

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 179
    .line 183
    :goto_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "useProxy":Z
    return-object v0

    .line 176
    .restart local v0    # "useProxy":Z
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 178
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "%1$tb %1$td, %1$tY %1$tl:%1$tM:%1$tS %1$Tp %2$s%n%4$s: %5$s%6$s%n"

    move-object v1, v3

    .line 179
    goto :goto_0

    .line 181
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    const-string v3, "%1$tb %1$td, %1$tY %1$tl:%1$tM:%1$tS %1$Tp %2$s%n%4$s: %5$s%6$s%n"

    move-object v1, v3

    goto :goto_0
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "logger":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "level":Ljava/lang/Object;
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 116
    sget-object v2, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Lsun/util/logging/LoggingProxy;->isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "logger":Ljava/lang/Object;
    return v0
.end method

.method public static log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "logger":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "level":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 121
    sget-object v3, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v3, v4, v5, v6}, Lsun/util/logging/LoggingProxy;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "logger":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "level":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 126
    sget-object v4, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-interface {v4, v5, v6, v7, v8}, Lsun/util/logging/LoggingProxy;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    return-void
.end method

.method public static varargs log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "logger":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "level":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "params":[Ljava/lang/Object;
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 131
    sget-object v4, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-interface {v4, v5, v6, v7, v8}, Lsun/util/logging/LoggingProxy;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public static parseLevel(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "levelName":Ljava/lang/String;
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 136
    sget-object v1, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    move-object v2, v0

    invoke-interface {v1, v2}, Lsun/util/logging/LoggingProxy;->parseLevel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "levelName":Ljava/lang/String;
    return-object v0
.end method

.method public static setLevel(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "logger":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "newLevel":Ljava/lang/Object;
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 111
    sget-object v2, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Lsun/util/logging/LoggingProxy;->setLevel(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public static setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "loggerName":Ljava/lang/String;
    move-object v1, p1

    .local v1, "levelName":Ljava/lang/String;
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 91
    sget-object v2, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Lsun/util/logging/LoggingProxy;->setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
