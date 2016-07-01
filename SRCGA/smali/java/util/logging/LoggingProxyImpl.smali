.class Ljava/util/logging/LoggingProxyImpl;
.super Ljava/lang/Object;
.source "LoggingProxyImpl.java"

# interfaces
.implements Lsun/util/logging/LoggingProxy;


# static fields
.field static final INSTANCE:Lsun/util/logging/LoggingProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Ljava/util/logging/LoggingProxyImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/logging/LoggingProxyImpl;-><init>()V

    sput-object v0, Ljava/util/logging/LoggingProxyImpl;->INSTANCE:Lsun/util/logging/LoggingProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Ljava/util/logging/LoggingProxyImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Ljava/util/logging/LoggingProxyImpl;
    move-object v1, p1

    .local v1, "logger":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/util/logging/Logger;

    invoke-virtual {v2}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/logging/LoggingProxyImpl;
    return-object v0
.end method

.method public getLevelName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljava/util/logging/LoggingProxyImpl;
    move-object v1, p1

    .local v1, "level":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/logging/LoggingProxyImpl;
    return-object v0
.end method

.method public getLevelValue(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljava/util/logging/LoggingProxyImpl;
    move-object v1, p1

    .local v1, "level":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/util/logging/LoggingProxyImpl;
    return v0
.end method

.method public getLogger(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Ljava/util/logging/LoggingProxyImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/logging/LoggingProxyImpl;
    return-object v0
.end method

.method public getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Ljava/util/logging/LoggingProxyImpl;
    move-object v1, p1

    .local v1, "loggerName":Ljava/lang/String;
    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/logging/LoggingMXBean;->getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/logging/LoggingProxyImpl;
    return-object v0
.end method

.method public getLoggerNames()Ljava/util/List;
    .locals 2
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
    .line 50
    move-object v0, p0

    .local v0, "this":Ljava/util/logging/LoggingProxyImpl;
    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/logging/LoggingMXBean;->getLoggerNames()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/util/logging/LoggingProxyImpl;
    return-object v0
.end method

.method public getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljava/util/logging/LoggingProxyImpl;
    move-object v1, p1

    .local v1, "loggerName":Ljava/lang/String;
    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/logging/LoggingMXBean;->getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/logging/LoggingProxyImpl;
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljava/util/logging/LoggingProxyImpl;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/logging/LoggingProxyImpl;
    return-object v0
.end method

.method public isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Ljava/util/logging/LoggingProxyImpl;
    move-object v1, p1

    .local v1, "logger":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "level":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Ljava/util/logging/Logger;

    move-object v4, v2

    check-cast v4, Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljava/util/logging/LoggingProxyImpl;
    return v0
.end method

.method public log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Ljava/util/logging/LoggingProxyImpl;
    move-object v1, p1

    .local v1, "logger":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "level":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "msg":Ljava/lang/String;
    move-object v4, v1

    check-cast v4, Ljava/util/logging/Logger;

    move-object v5, v2

    check-cast v5, Ljava/util/logging/Level;

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Ljava/util/logging/LoggingProxyImpl;
    move-object v1, p1

    .local v1, "logger":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "level":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "msg":Ljava/lang/String;
    move-object v4, p4

    .local v4, "t":Ljava/lang/Throwable;
    move-object v5, v1

    check-cast v5, Ljava/util/logging/Logger;

    move-object v6, v2

    check-cast v6, Ljava/util/logging/Level;

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method

.method public varargs log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljava/util/logging/LoggingProxyImpl;
    move-object v1, p1

    .local v1, "logger":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "level":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "msg":Ljava/lang/String;
    move-object v4, p4

    .local v4, "params":[Ljava/lang/Object;
    move-object v5, v1

    check-cast v5, Ljava/util/logging/Logger;

    move-object v6, v2

    check-cast v6, Ljava/util/logging/Level;

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public parseLevel(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljava/util/logging/LoggingProxyImpl;
    move-object v1, p1

    .local v1, "levelName":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/logging/LoggingProxyImpl;
    return-object v0
.end method

.method public setLevel(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Ljava/util/logging/LoggingProxyImpl;
    move-object v1, p1

    .local v1, "logger":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newLevel":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Ljava/util/logging/Logger;

    move-object v4, v2

    check-cast v4, Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 26
    return-void
.end method

.method public setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljava/util/logging/LoggingProxyImpl;
    move-object v1, p1

    .local v1, "loggerName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "levelName":Ljava/lang/String;
    invoke-static {}, Ljava/util/logging/LogManager;->getLoggingMXBean()Ljava/util/logging/LoggingMXBean;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/logging/LoggingMXBean;->setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method
