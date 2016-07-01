.class final Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
.super Lsun/util/logging/PlatformLogger$LoggerProxy;
.source "PlatformLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/PlatformLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JavaLoggerProxy"
.end annotation


# instance fields
.field private final javaLogger:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 627
    invoke-static {}, Lsun/util/logging/PlatformLogger$Level;->values()[Lsun/util/logging/PlatformLogger$Level;

    move-result-object v4

    move-object v0, v4

    move-object v4, v0

    array-length v4, v4

    move v1, v4

    const/4 v4, 0x0

    move v2, v4

    .local v3, "level":Lsun/util/logging/PlatformLogger$Level;
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_0

    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 628
    move-object v4, v3

    move-object v5, v3

    invoke-virtual {v5}, Lsun/util/logging/PlatformLogger$Level;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsun/util/logging/LoggingSupport;->parseLevel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    .line 627
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 630
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 635
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;-><init>(Ljava/lang/String;Lsun/util/logging/PlatformLogger$Level;)V

    .line 636
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lsun/util/logging/PlatformLogger$Level;)V
    .locals 5

    .prologue
    .line 639
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "level":Lsun/util/logging/PlatformLogger$Level;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lsun/util/logging/PlatformLogger$LoggerProxy;-><init>(Ljava/lang/String;)V

    .line 640
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lsun/util/logging/LoggingSupport;->getLogger(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    .line 641
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 643
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    invoke-static {v3, v4}, Lsun/util/logging/LoggingSupport;->setLevel(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 645
    :cond_0
    return-void
.end method


# virtual methods
.method doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 648
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    move-object v1, p1

    .local v1, "level":Lsun/util/logging/PlatformLogger$Level;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    move-object v4, v1

    iget-object v4, v4, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lsun/util/logging/LoggingSupport;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    move-object v1, p1

    .local v1, "level":Lsun/util/logging/PlatformLogger$Level;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Throwable;
    move-object v4, v0

    iget-object v4, v4, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    move-object v5, v1

    iget-object v5, v5, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lsun/util/logging/LoggingSupport;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 653
    return-void
.end method

.method varargs doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    move-object v1, p1

    .local v1, "level":Lsun/util/logging/PlatformLogger$Level;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "params":[Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 657
    .line 667
    :goto_0
    return-void

    .line 661
    :cond_0
    move-object v7, v3

    if-eqz v7, :cond_1

    move-object v7, v3

    array-length v7, v7

    :goto_1
    move v4, v7

    .line 662
    .local v4, "len":I
    move v7, v4

    new-array v7, v7, [Ljava/lang/String;

    move-object v5, v7

    .line 663
    .local v5, "sparams":[Ljava/lang/Object;
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_2
    move v7, v6

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 664
    move-object v7, v5

    move v8, v6

    move-object v9, v3

    move v10, v6

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 663
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 661
    .end local v4    # "len":I
    .end local v5    # "sparams":[Ljava/lang/Object;
    .end local v6    # "i":I
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 666
    .restart local v4    # "len":I
    .restart local v5    # "sparams":[Ljava/lang/Object;
    .restart local v6    # "i":I
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    move-object v8, v1

    iget-object v8, v8, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    move-object v9, v2

    move-object v10, v5

    invoke-static {v7, v8, v9, v10}, Lsun/util/logging/LoggingSupport;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    goto :goto_0
.end method

.method getLevel()Lsun/util/logging/PlatformLogger$Level;
    .locals 4

    .prologue
    .line 679
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    invoke-static {v3}, Lsun/util/logging/LoggingSupport;->getLevel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 680
    .local v1, "javaLevel":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 685
    .end local v0    # "this":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    :goto_0
    return-object v0

    .line 683
    .restart local v0    # "this":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    :cond_0
    move-object v3, v1

    :try_start_0
    invoke-static {v3}, Lsun/util/logging/LoggingSupport;->getLevelName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/util/logging/PlatformLogger$Level;->valueOf(Ljava/lang/String;)Lsun/util/logging/PlatformLogger$Level;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 684
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 685
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    move-object v3, v1

    invoke-static {v3}, Lsun/util/logging/LoggingSupport;->getLevelValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lsun/util/logging/PlatformLogger$Level;->valueOf(I)Lsun/util/logging/PlatformLogger$Level;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method isEnabled()Z
    .locals 3

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    move-object v1, v0

    iget-object v1, v1, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    iget-object v2, v2, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    invoke-static {v1, v2}, Lsun/util/logging/LoggingSupport;->isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    return v0
.end method

.method isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z
    .locals 4

    .prologue
    .line 694
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    move-object v1, p1

    .local v1, "level":Lsun/util/logging/PlatformLogger$Level;
    move-object v2, v0

    iget-object v2, v2, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    move-object v3, v1

    iget-object v3, v3, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    invoke-static {v2, v3}, Lsun/util/logging/LoggingSupport;->isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    return v0
.end method

.method setLevel(Lsun/util/logging/PlatformLogger$Level;)V
    .locals 4

    .prologue
    .line 690
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    move-object v1, p1

    .local v1, "level":Lsun/util/logging/PlatformLogger$Level;
    move-object v2, v0

    iget-object v2, v2, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Lsun/util/logging/LoggingSupport;->setLevel(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 691
    return-void

    .line 690
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    goto :goto_0
.end method
