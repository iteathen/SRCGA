.class public abstract Ljavafx/scene/control/ComboBoxBaseBuilder;
.super Ljavafx/scene/control/ControlBuilder;
.source "ComboBoxBaseBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/control/ComboBoxBaseBuilder",
        "<TT;TB;>;>",
        "Ljavafx/scene/control/ControlBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private editable:Z

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

.field private onHidden:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private onHiding:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private onShowing:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private onShown:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private promptText:Ljava/lang/String;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ControlBuilder;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/control/ComboBoxBaseBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/control/ComboBoxBaseBuilder;->__set:I

    .line 44
    return-void
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/ComboBoxBase;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ComboBoxBase",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Ljavafx/scene/control/ControlBuilder;->applyTo(Ljavafx/scene/control/Control;)V

    .line 47
    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/ComboBoxBaseBuilder;->__set:I

    move v2, v4

    .line 48
    .local v2, "set":I
    :goto_0
    move v4, v2

    if-eqz v4, :cond_0

    .line 49
    move v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    move v3, v4

    .line 50
    .local v3, "i":I
    move v4, v2

    const/4 v5, 0x1

    move v6, v3

    shl-int/2addr v5, v6

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    move v2, v4

    .line 51
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 61
    :goto_1
    goto :goto_0

    .line 52
    :pswitch_0
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/control/ComboBoxBaseBuilder;->editable:Z

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ComboBoxBase;->setEditable(Z)V

    goto :goto_1

    .line 53
    :pswitch_1
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ComboBoxBaseBuilder;->onAction:Ljavafx/event/EventHandler;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ComboBoxBase;->setOnAction(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 54
    :pswitch_2
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ComboBoxBaseBuilder;->onHidden:Ljavafx/event/EventHandler;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ComboBoxBase;->setOnHidden(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 55
    :pswitch_3
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ComboBoxBaseBuilder;->onHiding:Ljavafx/event/EventHandler;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ComboBoxBase;->setOnHiding(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 56
    :pswitch_4
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ComboBoxBaseBuilder;->onShowing:Ljavafx/event/EventHandler;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ComboBoxBase;->setOnShowing(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 57
    :pswitch_5
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ComboBoxBaseBuilder;->onShown:Ljavafx/event/EventHandler;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ComboBoxBase;->setOnShown(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 58
    :pswitch_6
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ComboBoxBaseBuilder;->promptText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ComboBoxBase;->setPromptText(Ljava/lang/String;)V

    goto :goto_1

    .line 59
    :pswitch_7
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ComboBoxBaseBuilder;->value:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ComboBoxBase;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 62
    .end local v3    # "i":I
    :cond_0
    return-void

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public editable(Z)Ljavafx/scene/control/ComboBoxBaseBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/ComboBoxBaseBuilder;->editable:Z

    .line 71
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/control/ComboBoxBaseBuilder;->__set(I)V

    .line 72
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    return-object v0
.end method

.method public onAction(Ljavafx/event/EventHandler;)Ljavafx/scene/control/ComboBoxBaseBuilder;
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
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ComboBoxBaseBuilder;->onAction:Ljavafx/event/EventHandler;

    .line 82
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ComboBoxBaseBuilder;->__set(I)V

    .line 83
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    return-object v0
.end method

.method public onHidden(Ljavafx/event/EventHandler;)Ljavafx/scene/control/ComboBoxBaseBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ComboBoxBaseBuilder;->onHidden:Ljavafx/event/EventHandler;

    .line 94
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljavafx/scene/control/ComboBoxBaseBuilder;->__set(I)V

    .line 95
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    return-object v0
.end method

.method public onHiding(Ljavafx/event/EventHandler;)Ljavafx/scene/control/ComboBoxBaseBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ComboBoxBaseBuilder;->onHiding:Ljavafx/event/EventHandler;

    .line 106
    move-object v2, v0

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljavafx/scene/control/ComboBoxBaseBuilder;->__set(I)V

    .line 107
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    return-object v0
.end method

.method public onShowing(Ljavafx/event/EventHandler;)Ljavafx/scene/control/ComboBoxBaseBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ComboBoxBaseBuilder;->onShowing:Ljavafx/event/EventHandler;

    .line 118
    move-object v2, v0

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljavafx/scene/control/ComboBoxBaseBuilder;->__set(I)V

    .line 119
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    return-object v0
.end method

.method public onShown(Ljavafx/event/EventHandler;)Ljavafx/scene/control/ComboBoxBaseBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ComboBoxBaseBuilder;->onShown:Ljavafx/event/EventHandler;

    .line 130
    move-object v2, v0

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljavafx/scene/control/ComboBoxBaseBuilder;->__set(I)V

    .line 131
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    return-object v0
.end method

.method public promptText(Ljava/lang/String;)Ljavafx/scene/control/ComboBoxBaseBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ComboBoxBaseBuilder;->promptText:Ljava/lang/String;

    .line 141
    move-object v2, v0

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljavafx/scene/control/ComboBoxBaseBuilder;->__set(I)V

    .line 142
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    return-object v0
.end method

.method public value(Ljava/lang/Object;)Ljavafx/scene/control/ComboBoxBaseBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TB;"
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ComboBoxBaseBuilder;->value:Ljava/lang/Object;

    .line 152
    move-object v2, v0

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljavafx/scene/control/ComboBoxBaseBuilder;->__set(I)V

    .line 153
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBaseBuilder;, "Ljavafx/scene/control/ComboBoxBaseBuilder<TT;TB;>;"
    return-object v0
.end method
