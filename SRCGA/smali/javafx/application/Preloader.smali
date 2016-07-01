.class public abstract Ljavafx/application/Preloader;
.super Ljavafx/application/Application;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/application/Preloader$StateChangeNotification;,
        Ljavafx/application/Preloader$ProgressNotification;,
        Ljavafx/application/Preloader$ErrorNotification;,
        Ljavafx/application/Preloader$PreloaderNotification;
    }
.end annotation


# static fields
.field private static final lineSeparator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Ljavafx/application/Preloader$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v1

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .line 119
    .local v0, "prop":Ljava/lang/String;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_0
    sput-object v1, Ljavafx/application/Preloader;->lineSeparator:Ljava/lang/String;

    .line 120
    return-void

    .line 119
    :cond_0
    const-string v1, "\n"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Preloader;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/application/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Ljavafx/application/Preloader;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$lambda$0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljavafx/application/Preloader;->lambda$static$135()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$135()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleApplicationNotification(Ljavafx/application/Preloader$PreloaderNotification;)V
    .locals 0
    .param p1, "info"    # Ljavafx/application/Preloader$PreloaderNotification;

    .prologue
    .line 171
    return-void
.end method

.method public handleErrorNotification(Ljavafx/application/Preloader$ErrorNotification;)Z
    .locals 3

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Preloader;
    move-object v1, p1

    .local v1, "info":Ljavafx/application/Preloader$ErrorNotification;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Ljavafx/application/Preloader;
    return v0
.end method

.method public handleProgressNotification(Ljavafx/application/Preloader$ProgressNotification;)V
    .locals 0
    .param p1, "info"    # Ljavafx/application/Preloader$ProgressNotification;

    .prologue
    .line 136
    return-void
.end method

.method public handleStateChangeNotification(Ljavafx/application/Preloader$StateChangeNotification;)V
    .locals 0
    .param p1, "info"    # Ljavafx/application/Preloader$StateChangeNotification;

    .prologue
    .line 151
    return-void
.end method
