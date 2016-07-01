.class final Lcom/sun/glass/ui/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field public static final GTK:Ljava/lang/String; = "Gtk"

.field public static final IOS:Ljava/lang/String; = "Ios"

.field public static final MAC:Ljava/lang/String; = "Mac"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final WINDOWS:Ljava/lang/String; = "Win"

.field private static type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Platform;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/Platform;->lambda$determinePlatform$42()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized determinePlatform()Ljava/lang/String;
    .locals 6

    .prologue
    .line 42
    const-class v5, Lcom/sun/glass/ui/Platform;

    monitor-enter v5

    :try_start_0
    sget-object v3, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 45
    invoke-static {}, Lcom/sun/glass/ui/Platform$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v3

    .line 46
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    .line 48
    .local v0, "userPlatform":Ljava/lang/String;
    move-object v3, v0

    if-eqz v3, :cond_5

    .line 49
    move-object v3, v0

    const-string v4, "macosx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    const-string v3, "Mac"

    sput-object v3, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    .line 61
    :goto_0
    sget-object v3, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 75
    .end local v0    # "userPlatform":Ljava/lang/String;
    .local v1, "osName":Ljava/lang/String;
    .local v2, "osNameLowerCase":Ljava/lang/String;
    :goto_1
    monitor-exit v5

    return-object v0

    .line 51
    .end local v1    # "osName":Ljava/lang/String;
    .end local v2    # "osNameLowerCase":Ljava/lang/String;
    .restart local v0    # "userPlatform":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    :try_start_1
    const-string v4, "windows"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    const-string v3, "Win"

    sput-object v3, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_1
    move-object v3, v0

    const-string v4, "linux"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    const-string v3, "Gtk"

    sput-object v3, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_2
    move-object v3, v0

    const-string v4, "gtk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 56
    const-string v3, "Gtk"

    sput-object v3, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_3
    move-object v3, v0

    const-string v4, "ios"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 58
    const-string v3, "Ios"

    sput-object v3, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_4
    move-object v3, v0

    sput-object v3, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "userPlatform":Ljava/lang/String;
    throw v0

    .line 64
    .restart local v0    # "userPlatform":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v3, "os.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 65
    .restart local v1    # "osName":Ljava/lang/String;
    move-object v3, v1

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 66
    .restart local v2    # "osNameLowerCase":Ljava/lang/String;
    move-object v3, v2

    const-string v4, "mac"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object v3, v2

    const-string v4, "darwin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 67
    :cond_6
    const-string v3, "Mac"

    sput-object v3, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    .line 75
    :cond_7
    :goto_2
    sget-object v3, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    move-object v0, v3

    goto :goto_1

    .line 68
    :cond_8
    move-object v3, v2

    const-string v4, "wind"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 69
    const-string v3, "Win"

    sput-object v3, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;

    goto :goto_2

    .line 70
    :cond_9
    move-object v3, v2

    const-string v4, "linux"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 71
    const-string v3, "Gtk"

    sput-object v3, Lcom/sun/glass/ui/Platform;->type:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private static synthetic lambda$determinePlatform$42()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "glass.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
