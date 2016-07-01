.class abstract Lsun/util/logging/PlatformLogger$LoggerProxy;
.super Ljava/lang/Object;
.source "PlatformLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/PlatformLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LoggerProxy"
.end annotation


# instance fields
.field final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$LoggerProxy;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 450
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lsun/util/logging/PlatformLogger$LoggerProxy;->name:Ljava/lang/String;

    .line 451
    return-void
.end method


# virtual methods
.method abstract doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V
.end method

.method abstract doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method varargs abstract doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method abstract getLevel()Lsun/util/logging/PlatformLogger$Level;
.end method

.method abstract isEnabled()Z
.end method

.method abstract isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z
.end method

.method abstract setLevel(Lsun/util/logging/PlatformLogger$Level;)V
.end method
