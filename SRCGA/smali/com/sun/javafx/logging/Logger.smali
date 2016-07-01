.class public Lcom/sun/javafx/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/Logger;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 36
    return-void
.end method

.method public incrementCounter(Ljava/lang/String;)V
    .locals 0
    .param p1, "counter"    # Ljava/lang/String;

    .prologue
    .line 37
    return-void
.end method

.method public newInput(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    return-void
.end method

.method public newPhase(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    return-void
.end method

.method public pulseEnd()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public pulseStart()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public renderEnd()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public renderStart()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
