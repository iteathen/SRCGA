.class public abstract Ljavafx/scene/control/ControlBuilder;
.super Ljavafx/scene/ParentBuilder;
.source "ControlBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/ControlBuilder",
        "<TB;>;>",
        "Ljavafx/scene/ParentBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private contextMenu:Ljavafx/scene/control/ContextMenu;

.field private maxHeight:D

.field private maxWidth:D

.field private minHeight:D

.field private minWidth:D

.field private prefHeight:D

.field private prefWidth:D

.field private skin:Ljavafx/scene/control/Skin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation
.end field

.field private tooltip:Ljavafx/scene/control/Tooltip;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/ParentBuilder;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/control/ControlBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/control/ControlBuilder;->__set:I

    .line 44
    return-void
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/Control;)V
    .locals 8

    .prologue
    .line 46
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/control/Control;
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Ljavafx/scene/ParentBuilder;->applyTo(Ljavafx/scene/Parent;)V

    .line 47
    move-object v5, v1

    iget v5, v5, Ljavafx/scene/control/ControlBuilder;->__set:I

    move v3, v5

    .line 48
    .local v3, "set":I
    :goto_0
    move v5, v3

    if-eqz v5, :cond_0

    .line 49
    move v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    move v4, v5

    .line 50
    .local v4, "i":I
    move v5, v3

    const/4 v6, 0x1

    move v7, v4

    shl-int/2addr v6, v7

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v3, v5

    .line 51
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 62
    :goto_1
    goto :goto_0

    .line 52
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/ControlBuilder;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Control;->setContextMenu(Ljavafx/scene/control/ContextMenu;)V

    goto :goto_1

    .line 53
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/ControlBuilder;->maxHeight:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Control;->setMaxHeight(D)V

    goto :goto_1

    .line 54
    :pswitch_2
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/ControlBuilder;->maxWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Control;->setMaxWidth(D)V

    goto :goto_1

    .line 55
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/ControlBuilder;->minHeight:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Control;->setMinHeight(D)V

    goto :goto_1

    .line 56
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/ControlBuilder;->minWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Control;->setMinWidth(D)V

    goto :goto_1

    .line 57
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/ControlBuilder;->prefHeight:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Control;->setPrefHeight(D)V

    goto :goto_1

    .line 58
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/ControlBuilder;->prefWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Control;->setPrefWidth(D)V

    goto :goto_1

    .line 59
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/ControlBuilder;->skin:Ljavafx/scene/control/Skin;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Control;->setSkin(Ljavafx/scene/control/Skin;)V

    goto :goto_1

    .line 60
    :pswitch_8
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/ControlBuilder;->tooltip:Ljavafx/scene/control/Tooltip;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Control;->setTooltip(Ljavafx/scene/control/Tooltip;)V

    goto :goto_1

    .line 63
    .end local v4    # "i":I
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
        :pswitch_8
    .end packed-switch
.end method

.method public contextMenu(Ljavafx/scene/control/ContextMenu;)Ljavafx/scene/control/ControlBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ContextMenu;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/ContextMenu;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ControlBuilder;->contextMenu:Ljavafx/scene/control/ContextMenu;

    .line 72
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/control/ControlBuilder;->__set(I)V

    .line 73
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    return-object v0
.end method

.method public maxHeight(D)Ljavafx/scene/control/ControlBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/ControlBuilder;->maxHeight:D

    .line 83
    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljavafx/scene/control/ControlBuilder;->__set(I)V

    .line 84
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    return-object v0
.end method

.method public maxWidth(D)Ljavafx/scene/control/ControlBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/ControlBuilder;->maxWidth:D

    .line 94
    move-object v3, v0

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljavafx/scene/control/ControlBuilder;->__set(I)V

    .line 95
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    return-object v0
.end method

.method public minHeight(D)Ljavafx/scene/control/ControlBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/ControlBuilder;->minHeight:D

    .line 105
    move-object v3, v0

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljavafx/scene/control/ControlBuilder;->__set(I)V

    .line 106
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    return-object v0
.end method

.method public minWidth(D)Ljavafx/scene/control/ControlBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/ControlBuilder;->minWidth:D

    .line 116
    move-object v3, v0

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljavafx/scene/control/ControlBuilder;->__set(I)V

    .line 117
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    return-object v0
.end method

.method public prefHeight(D)Ljavafx/scene/control/ControlBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/ControlBuilder;->prefHeight:D

    .line 127
    move-object v3, v0

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljavafx/scene/control/ControlBuilder;->__set(I)V

    .line 128
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    return-object v0
.end method

.method public prefWidth(D)Ljavafx/scene/control/ControlBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/ControlBuilder;->prefWidth:D

    .line 138
    move-object v3, v0

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Ljavafx/scene/control/ControlBuilder;->__set(I)V

    .line 139
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    return-object v0
.end method

.method public skin(Ljavafx/scene/control/Skin;)Ljavafx/scene/control/ControlBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/Skin",
            "<*>;)TB;"
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ControlBuilder;->skin:Ljavafx/scene/control/Skin;

    .line 149
    move-object v2, v0

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljavafx/scene/control/ControlBuilder;->__set(I)V

    .line 150
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    return-object v0
.end method

.method public tooltip(Ljavafx/scene/control/Tooltip;)Ljavafx/scene/control/ControlBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/Tooltip;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/Tooltip;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ControlBuilder;->tooltip:Ljavafx/scene/control/Tooltip;

    .line 160
    move-object v2, v0

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljavafx/scene/control/ControlBuilder;->__set(I)V

    .line 161
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ControlBuilder;, "Ljavafx/scene/control/ControlBuilder<TB;>;"
    return-object v0
.end method
