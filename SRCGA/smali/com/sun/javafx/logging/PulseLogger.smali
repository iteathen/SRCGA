.class public Lcom/sun/javafx/logging/PulseLogger;
.super Ljava/lang/Object;
.source "PulseLogger.java"


# static fields
.field public static final PULSE_LOGGING_ENABLED:Z

.field private static final loggers:[Lcom/sun/javafx/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 40
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 41
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/logging/Logger;>;"
    invoke-static {}, Lcom/sun/javafx/logging/PrintLogger;->getInstance()Lcom/sun/javafx/logging/Logger;

    move-result-object v4

    move-object v1, v4

    .line 42
    .local v1, "logger":Lcom/sun/javafx/logging/Logger;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 43
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 46
    :cond_0
    :try_start_0
    const-string v4, "com.sun.javafx.logging.JFRLogger"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    .line 47
    .local v2, "klass":Ljava/lang/Class;
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 48
    move-object v4, v2

    const-string v5, "getInstance"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v3, v4

    .line 49
    .local v3, "method":Ljava/lang/reflect/Method;
    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/logging/Logger;

    move-object v1, v4

    .line 50
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 51
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v4

    .line 57
    .line 59
    .end local v2    # "klass":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    move-object v4, v0

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/sun/javafx/logging/Logger;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sun/javafx/logging/Logger;

    sput-object v4, Lcom/sun/javafx/logging/PulseLogger;->loggers:[Lcom/sun/javafx/logging/Logger;

    .line 60
    sget-object v4, Lcom/sun/javafx/logging/PulseLogger;->loggers:[Lcom/sun/javafx/logging/Logger;

    array-length v4, v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    sput-boolean v4, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    .line 61
    return-void

    .line 55
    :catch_0
    move-exception v4

    :goto_2
    move-object v2, v4

    goto :goto_0

    .line 60
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 55
    :catch_1
    move-exception v4

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_2

    :catch_4
    move-exception v4

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/PulseLogger;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessage(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "message":Ljava/lang/String;
    sget-object v5, Lcom/sun/javafx/logging/PulseLogger;->loggers:[Lcom/sun/javafx/logging/Logger;

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 89
    .local v4, "logger":Lcom/sun/javafx/logging/Logger;
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/logging/Logger;->addMessage(Ljava/lang/String;)V

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v4    # "logger":Lcom/sun/javafx/logging/Logger;
    :cond_0
    return-void
.end method

.method public static incrementCounter(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "counter":Ljava/lang/String;
    sget-object v5, Lcom/sun/javafx/logging/PulseLogger;->loggers:[Lcom/sun/javafx/logging/Logger;

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 95
    .local v4, "logger":Lcom/sun/javafx/logging/Logger;
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/logging/Logger;->incrementCounter(Ljava/lang/String;)V

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v4    # "logger":Lcom/sun/javafx/logging/Logger;
    :cond_0
    return-void
.end method

.method public static newInput(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v5, Lcom/sun/javafx/logging/PulseLogger;->loggers:[Lcom/sun/javafx/logging/Logger;

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 107
    .local v4, "logger":Lcom/sun/javafx/logging/Logger;
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/logging/Logger;->newInput(Ljava/lang/String;)V

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    .end local v4    # "logger":Lcom/sun/javafx/logging/Logger;
    :cond_0
    return-void
.end method

.method public static newPhase(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v5, Lcom/sun/javafx/logging/PulseLogger;->loggers:[Lcom/sun/javafx/logging/Logger;

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 101
    .local v4, "logger":Lcom/sun/javafx/logging/Logger;
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/logging/Logger;->newPhase(Ljava/lang/String;)V

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v4    # "logger":Lcom/sun/javafx/logging/Logger;
    :cond_0
    return-void
.end method

.method public static pulseEnd()V
    .locals 6

    .prologue
    .line 70
    sget-object v4, Lcom/sun/javafx/logging/PulseLogger;->loggers:[Lcom/sun/javafx/logging/Logger;

    move-object v0, v4

    move-object v4, v0

    array-length v4, v4

    move v1, v4

    const/4 v4, 0x0

    move v2, v4

    .local v3, "logger":Lcom/sun/javafx/logging/Logger;
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_0

    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 71
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/logging/Logger;->pulseEnd()V

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public static pulseStart()V
    .locals 6

    .prologue
    .line 64
    sget-object v4, Lcom/sun/javafx/logging/PulseLogger;->loggers:[Lcom/sun/javafx/logging/Logger;

    move-object v0, v4

    move-object v4, v0

    array-length v4, v4

    move v1, v4

    const/4 v4, 0x0

    move v2, v4

    .local v3, "logger":Lcom/sun/javafx/logging/Logger;
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_0

    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 65
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/logging/Logger;->pulseStart()V

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public static renderEnd()V
    .locals 6

    .prologue
    .line 82
    sget-object v4, Lcom/sun/javafx/logging/PulseLogger;->loggers:[Lcom/sun/javafx/logging/Logger;

    move-object v0, v4

    move-object v4, v0

    array-length v4, v4

    move v1, v4

    const/4 v4, 0x0

    move v2, v4

    .local v3, "logger":Lcom/sun/javafx/logging/Logger;
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_0

    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 83
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/logging/Logger;->renderEnd()V

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method public static renderStart()V
    .locals 6

    .prologue
    .line 76
    sget-object v4, Lcom/sun/javafx/logging/PulseLogger;->loggers:[Lcom/sun/javafx/logging/Logger;

    move-object v0, v4

    move-object v4, v0

    array-length v4, v4

    move v1, v4

    const/4 v4, 0x0

    move v2, v4

    .local v3, "logger":Lcom/sun/javafx/logging/Logger;
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_0

    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 77
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/logging/Logger;->renderStart()V

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method
