.class Lcom/sun/glass/ui/monocle/AndroidInputDevice;
.super Ljava/lang/Object;
.source "AndroidInputDevice.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/sun/glass/ui/monocle/InputDevice;


# instance fields
.field private inputProcessor:Lcom/sun/glass/ui/monocle/AndroidInputProcessor;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public is5Way()Z
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    return v0
.end method

.method public isFullKeyboard()Z
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    return v0
.end method

.method public isMultiTouch()Z
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    return v0
.end method

.method public isRelative()Z
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    return v0
.end method

.method public isTouch()Z
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/AndroidInputDevice;->inputProcessor:Lcom/sun/glass/ui/monocle/AndroidInputProcessor;

    if-nez v1, :cond_0

    .line 38
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: no input processor"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    .line 43
    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method setInputProcessor(Lcom/sun/glass/ui/monocle/AndroidInputProcessor;)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    move-object v1, p1

    .local v1, "inputProcessor":Lcom/sun/glass/ui/monocle/AndroidInputProcessor;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/AndroidInputDevice;->inputProcessor:Lcom/sun/glass/ui/monocle/AndroidInputProcessor;

    .line 73
    return-void
.end method
