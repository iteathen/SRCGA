.class public Ljavafx/scene/control/TabPaneBuilder;
.super Ljavafx/scene/control/ControlBuilder;
.source "TabPaneBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/TabPaneBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/ControlBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/TabPane;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private rotateGraphic:Z

.field private selectionModel:Ljavafx/scene/control/SingleSelectionModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/SingleSelectionModel",
            "<",
            "Ljavafx/scene/control/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private side:Ljavafx/geometry/Side;

.field private tabClosingPolicy:Ljavafx/scene/control/TabPane$TabClosingPolicy;

.field private tabMaxHeight:D

.field private tabMaxWidth:D

.field private tabMinHeight:D

.field private tabMinWidth:D

.field private tabs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/control/Tab;",
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

    .local v0, "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ControlBuilder;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/control/TabPaneBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/control/TabPaneBuilder;->__set:I

    .line 49
    return-void
.end method

.method public static create()Ljavafx/scene/control/TabPaneBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TabPaneBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/TabPaneBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/TabPaneBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/TabPane;)V
    .locals 8

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/control/TabPane;
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Ljavafx/scene/control/ControlBuilder;->applyTo(Ljavafx/scene/control/Control;)V

    .line 52
    move-object v5, v1

    iget v5, v5, Ljavafx/scene/control/TabPaneBuilder;->__set:I

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

    .line 67
    :goto_1
    goto :goto_0

    .line 57
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/control/TabPaneBuilder;->rotateGraphic:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TabPane;->setRotateGraphic(Z)V

    goto :goto_1

    .line 58
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TabPaneBuilder;->selectionModel:Ljavafx/scene/control/SingleSelectionModel;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TabPane;->setSelectionModel(Ljavafx/scene/control/SingleSelectionModel;)V

    goto :goto_1

    .line 59
    :pswitch_2
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TabPaneBuilder;->side:Ljavafx/geometry/Side;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TabPane;->setSide(Ljavafx/geometry/Side;)V

    goto :goto_1

    .line 60
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TabPaneBuilder;->tabClosingPolicy:Ljavafx/scene/control/TabPane$TabClosingPolicy;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TabPane;->setTabClosingPolicy(Ljavafx/scene/control/TabPane$TabClosingPolicy;)V

    goto :goto_1

    .line 61
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/TabPaneBuilder;->tabMaxHeight:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TabPane;->setTabMaxHeight(D)V

    goto :goto_1

    .line 62
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/TabPaneBuilder;->tabMaxWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TabPane;->setTabMaxWidth(D)V

    goto :goto_1

    .line 63
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/TabPaneBuilder;->tabMinHeight:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TabPane;->setTabMinHeight(D)V

    goto :goto_1

    .line 64
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/TabPaneBuilder;->tabMinWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TabPane;->setTabMinWidth(D)V

    goto :goto_1

    .line 65
    :pswitch_8
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TabPaneBuilder;->tabs:Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v5

    goto :goto_1

    .line 68
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
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TabPaneBuilder;->build()Ljavafx/scene/control/TabPane;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/TabPane;
    .locals 5

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/TabPane;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/TabPane;-><init>()V

    move-object v1, v2

    .line 181
    .local v1, "x":Ljavafx/scene/control/TabPane;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TabPaneBuilder;->applyTo(Ljavafx/scene/control/TabPane;)V

    .line 182
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    return-object v0
.end method

.method public rotateGraphic(Z)Ljavafx/scene/control/TabPaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/TabPaneBuilder;->rotateGraphic:Z

    .line 77
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/control/TabPaneBuilder;->__set(I)V

    .line 78
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    return-object v0
.end method

.method public selectionModel(Ljavafx/scene/control/SingleSelectionModel;)Ljavafx/scene/control/TabPaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/SingleSelectionModel",
            "<",
            "Ljavafx/scene/control/Tab;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<Ljavafx/scene/control/Tab;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TabPaneBuilder;->selectionModel:Ljavafx/scene/control/SingleSelectionModel;

    .line 88
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TabPaneBuilder;->__set(I)V

    .line 89
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    return-object v0
.end method

.method public side(Ljavafx/geometry/Side;)Ljavafx/scene/control/TabPaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Side;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Side;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TabPaneBuilder;->side:Ljavafx/geometry/Side;

    .line 99
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljavafx/scene/control/TabPaneBuilder;->__set(I)V

    .line 100
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    return-object v0
.end method

.method public tabClosingPolicy(Ljavafx/scene/control/TabPane$TabClosingPolicy;)Ljavafx/scene/control/TabPaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TabPane$TabClosingPolicy;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/TabPane$TabClosingPolicy;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TabPaneBuilder;->tabClosingPolicy:Ljavafx/scene/control/TabPane$TabClosingPolicy;

    .line 110
    move-object v2, v0

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljavafx/scene/control/TabPaneBuilder;->__set(I)V

    .line 111
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    return-object v0
.end method

.method public tabMaxHeight(D)Ljavafx/scene/control/TabPaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/TabPaneBuilder;->tabMaxHeight:D

    .line 121
    move-object v3, v0

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljavafx/scene/control/TabPaneBuilder;->__set(I)V

    .line 122
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    return-object v0
.end method

.method public tabMaxWidth(D)Ljavafx/scene/control/TabPaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/TabPaneBuilder;->tabMaxWidth:D

    .line 132
    move-object v3, v0

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljavafx/scene/control/TabPaneBuilder;->__set(I)V

    .line 133
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    return-object v0
.end method

.method public tabMinHeight(D)Ljavafx/scene/control/TabPaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/TabPaneBuilder;->tabMinHeight:D

    .line 143
    move-object v3, v0

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Ljavafx/scene/control/TabPaneBuilder;->__set(I)V

    .line 144
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    return-object v0
.end method

.method public tabMinWidth(D)Ljavafx/scene/control/TabPaneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/TabPaneBuilder;->tabMinWidth:D

    .line 154
    move-object v3, v0

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Ljavafx/scene/control/TabPaneBuilder;->__set(I)V

    .line 155
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    return-object v0
.end method

.method public tabs(Ljava/util/Collection;)Ljavafx/scene/control/TabPaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/control/Tab;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/scene/control/Tab;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TabPaneBuilder;->tabs:Ljava/util/Collection;

    .line 165
    move-object v2, v0

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljavafx/scene/control/TabPaneBuilder;->__set(I)V

    .line 166
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    return-object v0
.end method

.method public varargs tabs([Ljavafx/scene/control/Tab;)Ljavafx/scene/control/TabPaneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/control/Tab;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/control/Tab;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TabPaneBuilder;->tabs(Ljava/util/Collection;)Ljavafx/scene/control/TabPaneBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TabPaneBuilder;, "Ljavafx/scene/control/TabPaneBuilder<TB;>;"
    return-object v0
.end method
