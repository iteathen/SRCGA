.class public Lcom/sun/glass/ui/Application$EventHandler;
.super Ljava/lang/Object;
.source "Application.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application$EventHandler;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleDidBecomeActiveAction(Lcom/sun/glass/ui/Application;J)V
    .locals 0
    .param p1, "app"    # Lcom/sun/glass/ui/Application;
    .param p2, "time"    # J

    .prologue
    .line 59
    return-void
.end method

.method public handleDidFinishLaunchingAction(Lcom/sun/glass/ui/Application;J)V
    .locals 0
    .param p1, "app"    # Lcom/sun/glass/ui/Application;
    .param p2, "time"    # J

    .prologue
    .line 53
    return-void
.end method

.method public handleDidHideAction(Lcom/sun/glass/ui/Application;J)V
    .locals 0
    .param p1, "app"    # Lcom/sun/glass/ui/Application;
    .param p2, "time"    # J

    .prologue
    .line 74
    return-void
.end method

.method public handleDidReceiveMemoryWarning(Lcom/sun/glass/ui/Application;J)V
    .locals 0
    .param p1, "app"    # Lcom/sun/glass/ui/Application;
    .param p2, "time"    # J

    .prologue
    .line 68
    return-void
.end method

.method public handleDidResignActiveAction(Lcom/sun/glass/ui/Application;J)V
    .locals 0
    .param p1, "app"    # Lcom/sun/glass/ui/Application;
    .param p2, "time"    # J

    .prologue
    .line 65
    return-void
.end method

.method public handleDidUnhideAction(Lcom/sun/glass/ui/Application;J)V
    .locals 0
    .param p1, "app"    # Lcom/sun/glass/ui/Application;
    .param p2, "time"    # J

    .prologue
    .line 80
    return-void
.end method

.method public handleOpenFilesAction(Lcom/sun/glass/ui/Application;J[Ljava/lang/String;)V
    .locals 0
    .param p1, "app"    # Lcom/sun/glass/ui/Application;
    .param p2, "time"    # J
    .param p4, "files"    # [Ljava/lang/String;

    .prologue
    .line 84
    return-void
.end method

.method public handleQuitAction(Lcom/sun/glass/ui/Application;J)V
    .locals 0
    .param p1, "app"    # Lcom/sun/glass/ui/Application;
    .param p2, "time"    # J

    .prologue
    .line 87
    return-void
.end method

.method public handleThemeChanged(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application$EventHandler;
    move-object v1, p1

    .local v1, "themeName":Ljava/lang/String;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/Application$EventHandler;
    return v0
.end method

.method public handleWillBecomeActiveAction(Lcom/sun/glass/ui/Application;J)V
    .locals 0
    .param p1, "app"    # Lcom/sun/glass/ui/Application;
    .param p2, "time"    # J

    .prologue
    .line 56
    return-void
.end method

.method public handleWillFinishLaunchingAction(Lcom/sun/glass/ui/Application;J)V
    .locals 0
    .param p1, "app"    # Lcom/sun/glass/ui/Application;
    .param p2, "time"    # J

    .prologue
    .line 50
    return-void
.end method

.method public handleWillHideAction(Lcom/sun/glass/ui/Application;J)V
    .locals 0
    .param p1, "app"    # Lcom/sun/glass/ui/Application;
    .param p2, "time"    # J

    .prologue
    .line 71
    return-void
.end method

.method public handleWillResignActiveAction(Lcom/sun/glass/ui/Application;J)V
    .locals 0
    .param p1, "app"    # Lcom/sun/glass/ui/Application;
    .param p2, "time"    # J

    .prologue
    .line 62
    return-void
.end method

.method public handleWillUnhideAction(Lcom/sun/glass/ui/Application;J)V
    .locals 0
    .param p1, "app"    # Lcom/sun/glass/ui/Application;
    .param p2, "time"    # J

    .prologue
    .line 77
    return-void
.end method
