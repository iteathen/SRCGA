.class public Ljavafx/scene/control/PopupControlBuilder;
.super Ljavafx/stage/PopupWindowBuilder;
.source "PopupControlBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/PopupControlBuilder",
        "<TB;>;>",
        "Ljavafx/stage/PopupWindowBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/PopupControl;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private id:Ljava/lang/String;

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

.field private style:Ljava/lang/String;

.field private styleClass:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
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

    .local v0, "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/PopupWindowBuilder;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/control/PopupControlBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/control/PopupControlBuilder;->__set:I

    .line 49
    return-void
.end method

.method public static create()Ljavafx/scene/control/PopupControlBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/PopupControlBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/PopupControlBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/PopupControlBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/PopupControl;)V
    .locals 8

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/control/PopupControl;
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Ljavafx/stage/PopupWindowBuilder;->applyTo(Ljavafx/stage/PopupWindow;)V

    .line 52
    move-object v5, v1

    iget v5, v5, Ljavafx/scene/control/PopupControlBuilder;->__set:I

    move v3, v5

    .line 53
    .local v3, "set":I
    :goto_0
    move v5, v3

    if-eqz v5, :cond_0

    .line 54
    move v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    move v4, v5

    .line 55
    .local v4, "i":I
    move v5, v3

    const/4 v6, 0x1

    move v7, v4

    shl-int/2addr v6, v7

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v3, v5

    .line 56
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 68
    :goto_1
    goto :goto_0

    .line 57
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/PopupControlBuilder;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/PopupControl;->setId(Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/PopupControlBuilder;->maxHeight:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/PopupControl;->setMaxHeight(D)V

    goto :goto_1

    .line 59
    :pswitch_2
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/PopupControlBuilder;->maxWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/PopupControl;->setMaxWidth(D)V

    goto :goto_1

    .line 60
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/PopupControlBuilder;->minHeight:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/PopupControl;->setMinHeight(D)V

    goto :goto_1

    .line 61
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/PopupControlBuilder;->minWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/PopupControl;->setMinWidth(D)V

    goto :goto_1

    .line 62
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/PopupControlBuilder;->prefHeight:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/PopupControl;->setPrefHeight(D)V

    goto :goto_1

    .line 63
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/PopupControlBuilder;->prefWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/PopupControl;->setPrefWidth(D)V

    goto :goto_1

    .line 64
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/PopupControlBuilder;->skin:Ljavafx/scene/control/Skin;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/PopupControl;->setSkin(Ljavafx/scene/control/Skin;)V

    goto :goto_1

    .line 65
    :pswitch_8
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/PopupControlBuilder;->style:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/PopupControl;->setStyle(Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :pswitch_9
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/PopupControl;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/PopupControlBuilder;->styleClass:Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v5

    goto :goto_1

    .line 69
    .end local v4    # "i":I
    :cond_0
    return-void

    .line 56
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
        :pswitch_9
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControlBuilder;->build()Ljavafx/scene/control/PopupControl;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/PopupControl;
    .locals 5

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/PopupControl;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/PopupControl;-><init>()V

    move-object v1, v2

    .line 193
    .local v1, "x":Ljavafx/scene/control/PopupControl;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/PopupControlBuilder;->applyTo(Ljavafx/scene/control/PopupControl;)V

    .line 194
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    return-object v0
.end method

.method public id(Ljava/lang/String;)Ljavafx/scene/control/PopupControlBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/PopupControlBuilder;->id:Ljava/lang/String;

    .line 78
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/control/PopupControlBuilder;->__set(I)V

    .line 79
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    return-object v0
.end method

.method public maxHeight(D)Ljavafx/scene/control/PopupControlBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/PopupControlBuilder;->maxHeight:D

    .line 89
    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljavafx/scene/control/PopupControlBuilder;->__set(I)V

    .line 90
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    return-object v0
.end method

.method public maxWidth(D)Ljavafx/scene/control/PopupControlBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/PopupControlBuilder;->maxWidth:D

    .line 100
    move-object v3, v0

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljavafx/scene/control/PopupControlBuilder;->__set(I)V

    .line 101
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    return-object v0
.end method

.method public minHeight(D)Ljavafx/scene/control/PopupControlBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/PopupControlBuilder;->minHeight:D

    .line 111
    move-object v3, v0

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljavafx/scene/control/PopupControlBuilder;->__set(I)V

    .line 112
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    return-object v0
.end method

.method public minWidth(D)Ljavafx/scene/control/PopupControlBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/PopupControlBuilder;->minWidth:D

    .line 122
    move-object v3, v0

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljavafx/scene/control/PopupControlBuilder;->__set(I)V

    .line 123
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    return-object v0
.end method

.method public prefHeight(D)Ljavafx/scene/control/PopupControlBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/PopupControlBuilder;->prefHeight:D

    .line 133
    move-object v3, v0

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljavafx/scene/control/PopupControlBuilder;->__set(I)V

    .line 134
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    return-object v0
.end method

.method public prefWidth(D)Ljavafx/scene/control/PopupControlBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/PopupControlBuilder;->prefWidth:D

    .line 144
    move-object v3, v0

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Ljavafx/scene/control/PopupControlBuilder;->__set(I)V

    .line 145
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    return-object v0
.end method

.method public skin(Ljavafx/scene/control/Skin;)Ljavafx/scene/control/PopupControlBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/Skin",
            "<*>;)TB;"
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/PopupControlBuilder;->skin:Ljavafx/scene/control/Skin;

    .line 155
    move-object v2, v0

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljavafx/scene/control/PopupControlBuilder;->__set(I)V

    .line 156
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    return-object v0
.end method

.method public style(Ljava/lang/String;)Ljavafx/scene/control/PopupControlBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/PopupControlBuilder;->style:Ljava/lang/String;

    .line 166
    move-object v2, v0

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljavafx/scene/control/PopupControlBuilder;->__set(I)V

    .line 167
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    return-object v0
.end method

.method public styleClass(Ljava/util/Collection;)Ljavafx/scene/control/PopupControlBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/PopupControlBuilder;->styleClass:Ljava/util/Collection;

    .line 177
    move-object v2, v0

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljavafx/scene/control/PopupControlBuilder;->__set(I)V

    .line 178
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    return-object v0
.end method

.method public varargs styleClass([Ljava/lang/String;)Ljavafx/scene/control/PopupControlBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/PopupControlBuilder;->styleClass(Ljava/util/Collection;)Ljavafx/scene/control/PopupControlBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/PopupControlBuilder;, "Ljavafx/scene/control/PopupControlBuilder<TB;>;"
    return-object v0
.end method
