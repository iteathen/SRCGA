.class public abstract Lcom/sun/glass/ui/PlatformFactory;
.super Ljava/lang/Object;
.source "PlatformFactory.java"


# static fields
.field private static instance:Lcom/sun/glass/ui/PlatformFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/PlatformFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getPlatformFactory()Lcom/sun/glass/ui/PlatformFactory;
    .locals 8

    .prologue
    .line 37
    const-class v6, Lcom/sun/glass/ui/PlatformFactory;

    monitor-enter v6

    :try_start_0
    sget-object v3, Lcom/sun/glass/ui/PlatformFactory;->instance:Lcom/sun/glass/ui/PlatformFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 39
    :try_start_1
    invoke-static {}, Lcom/sun/glass/ui/Platform;->determinePlatform()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 40
    .local v0, "platform":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.sun.glass.ui."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PlatformFactory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 42
    .local v1, "factory":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 43
    .local v2, "c":Ljava/lang/Class;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/glass/ui/PlatformFactory;

    sput-object v3, Lcom/sun/glass/ui/PlatformFactory;->instance:Lcom/sun/glass/ui/PlatformFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 49
    .end local v0    # "platform":Ljava/lang/String;
    .end local v1    # "factory":Ljava/lang/String;
    .end local v2    # "c":Ljava/lang/Class;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v3, Lcom/sun/glass/ui/PlatformFactory;->instance:Lcom/sun/glass/ui/PlatformFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v3

    monitor-exit v6

    return-object v0

    .line 44
    .restart local v0    # "platform":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v0

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Failed to load Glass factory class"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method


# virtual methods
.method public abstract createApplication()Lcom/sun/glass/ui/Application;
.end method

.method public abstract createClipboardDelegate()Lcom/sun/glass/ui/delegate/ClipboardDelegate;
.end method

.method public abstract createMenuBarDelegate(Lcom/sun/glass/ui/MenuBar;)Lcom/sun/glass/ui/delegate/MenuBarDelegate;
.end method

.method public abstract createMenuDelegate(Lcom/sun/glass/ui/Menu;)Lcom/sun/glass/ui/delegate/MenuDelegate;
.end method

.method public abstract createMenuItemDelegate(Lcom/sun/glass/ui/MenuItem;)Lcom/sun/glass/ui/delegate/MenuItemDelegate;
.end method
