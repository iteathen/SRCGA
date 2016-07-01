.class final Lcom/sun/glass/ui/gtk/GtkTimer;
.super Lcom/sun/glass/ui/Timer;
.source "GtkTimer.java"


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkTimer;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/Timer;-><init>(Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected _start(Ljava/lang/Runnable;)J
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkTimer;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "vsync timer not supported"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected native _start(Ljava/lang/Runnable;I)J
.end method

.method protected native _stop(J)V
.end method
