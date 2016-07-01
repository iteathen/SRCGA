.class public abstract Ljavafx/scene/control/ButtonBaseBuilder;
.super Ljavafx/scene/control/LabeledBuilder;
.source "ButtonBaseBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/ButtonBaseBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/LabeledBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:Z

.field private onAction:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBaseBuilder;, "Ljavafx/scene/control/ButtonBaseBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/LabeledBuilder;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/ButtonBase;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBaseBuilder;, "Ljavafx/scene/control/ButtonBaseBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/ButtonBase;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/control/LabeledBuilder;->applyTo(Ljavafx/scene/control/Labeled;)V

    .line 44
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/control/ButtonBaseBuilder;->__set:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ButtonBaseBuilder;->onAction:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ButtonBase;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 45
    :cond_0
    return-void
.end method

.method public onAction(Ljavafx/event/EventHandler;)Ljavafx/scene/control/ButtonBaseBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBaseBuilder;, "Ljavafx/scene/control/ButtonBaseBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ButtonBaseBuilder;->onAction:Ljavafx/event/EventHandler;

    .line 54
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/control/ButtonBaseBuilder;->__set:Z

    .line 55
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ButtonBaseBuilder;, "Ljavafx/scene/control/ButtonBaseBuilder<TB;>;"
    return-object v0
.end method
