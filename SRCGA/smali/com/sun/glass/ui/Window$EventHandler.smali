.class public Lcom/sun/glass/ui/Window$EventHandler;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$EventHandler;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLevelEvent(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 75
    return-void
.end method

.method public handleScreenChangedEvent(Lcom/sun/glass/ui/Window;JLcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)V
    .locals 0
    .param p1, "window"    # Lcom/sun/glass/ui/Window;
    .param p2, "time"    # J
    .param p4, "oldScreen"    # Lcom/sun/glass/ui/Screen;
    .param p5, "newScreen"    # Lcom/sun/glass/ui/Screen;

    .prologue
    .line 66
    return-void
.end method

.method public handleWindowEvent(Lcom/sun/glass/ui/Window;JI)V
    .locals 0
    .param p1, "window"    # Lcom/sun/glass/ui/Window;
    .param p2, "time"    # J
    .param p4, "type"    # I

    .prologue
    .line 40
    return-void
.end method
