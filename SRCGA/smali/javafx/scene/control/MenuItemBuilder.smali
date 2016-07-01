.class public Ljavafx/scene/control/MenuItemBuilder;
.super Ljava/lang/Object;
.source "MenuItemBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/MenuItemBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/MenuItem;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private accelerator:Ljavafx/scene/input/KeyCombination;

.field private disable:Z

.field private graphic:Ljavafx/scene/Node;

.field private id:Ljava/lang/String;

.field private mnemonicParsing:Z

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

.field private onMenuValidation:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
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

.field private text:Ljava/lang/String;

.field private userData:Ljava/lang/Object;

.field private visible:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/control/MenuItemBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/control/MenuItemBuilder;->__set:I

    .line 49
    return-void
.end method

.method public static create()Ljavafx/scene/control/MenuItemBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/MenuItemBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/MenuItemBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/MenuItemBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public accelerator(Ljavafx/scene/input/KeyCombination;)Ljavafx/scene/control/MenuItemBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/input/KeyCombination;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/input/KeyCombination;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MenuItemBuilder;->accelerator:Ljavafx/scene/input/KeyCombination;

    .line 79
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/control/MenuItemBuilder;->__set(I)V

    .line 80
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/control/MenuItem;)V
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/MenuItem;
    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/MenuItemBuilder;->__set:I

    move v2, v4

    .line 52
    .local v2, "set":I
    :goto_0
    move v4, v2

    if-eqz v4, :cond_0

    .line 53
    move v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    move v3, v4

    .line 54
    .local v3, "i":I
    move v4, v2

    const/4 v5, 0x1

    move v6, v3

    shl-int/2addr v5, v6

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    move v2, v4

    .line 55
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 69
    :goto_1
    goto :goto_0

    .line 56
    :pswitch_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/MenuItemBuilder;->accelerator:Ljavafx/scene/input/KeyCombination;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuItem;->setAccelerator(Ljavafx/scene/input/KeyCombination;)V

    goto :goto_1

    .line 57
    :pswitch_1
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/control/MenuItemBuilder;->disable:Z

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuItem;->setDisable(Z)V

    goto :goto_1

    .line 58
    :pswitch_2
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/MenuItemBuilder;->graphic:Ljavafx/scene/Node;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuItem;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_1

    .line 59
    :pswitch_3
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/MenuItemBuilder;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuItem;->setId(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :pswitch_4
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/control/MenuItemBuilder;->mnemonicParsing:Z

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuItem;->setMnemonicParsing(Z)V

    goto :goto_1

    .line 61
    :pswitch_5
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/MenuItemBuilder;->onAction:Ljavafx/event/EventHandler;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuItem;->setOnAction(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 62
    :pswitch_6
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/MenuItemBuilder;->onMenuValidation:Ljavafx/event/EventHandler;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuItem;->setOnMenuValidation(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 63
    :pswitch_7
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/MenuItemBuilder;->style:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuItem;->setStyle(Ljava/lang/String;)V

    goto :goto_1

    .line 64
    :pswitch_8
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MenuItem;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/MenuItemBuilder;->styleClass:Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v4

    goto :goto_1

    .line 65
    :pswitch_9
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/MenuItemBuilder;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuItem;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :pswitch_a
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/MenuItemBuilder;->userData:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuItem;->setUserData(Ljava/lang/Object;)V

    goto :goto_1

    .line 67
    :pswitch_b
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/control/MenuItemBuilder;->visible:Z

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuItem;->setVisible(Z)V

    goto :goto_1

    .line 70
    .end local v3    # "i":I
    :cond_0
    return-void

    .line 55
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/MenuItemBuilder;->build()Ljavafx/scene/control/MenuItem;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/MenuItem;
    .locals 5

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/MenuItem;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/MenuItem;-><init>()V

    move-object v1, v2

    .line 217
    .local v1, "x":Ljavafx/scene/control/MenuItem;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MenuItemBuilder;->applyTo(Ljavafx/scene/control/MenuItem;)V

    .line 218
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public disable(Z)Ljavafx/scene/control/MenuItemBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/MenuItemBuilder;->disable:Z

    .line 90
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/scene/control/MenuItemBuilder;->__set(I)V

    .line 91
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public graphic(Ljavafx/scene/Node;)Ljavafx/scene/control/MenuItemBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MenuItemBuilder;->graphic:Ljavafx/scene/Node;

    .line 101
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljavafx/scene/control/MenuItemBuilder;->__set(I)V

    .line 102
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public id(Ljava/lang/String;)Ljavafx/scene/control/MenuItemBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MenuItemBuilder;->id:Ljava/lang/String;

    .line 112
    move-object v2, v0

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljavafx/scene/control/MenuItemBuilder;->__set(I)V

    .line 113
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public mnemonicParsing(Z)Ljavafx/scene/control/MenuItemBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/MenuItemBuilder;->mnemonicParsing:Z

    .line 123
    move-object v2, v0

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljavafx/scene/control/MenuItemBuilder;->__set(I)V

    .line 124
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public onAction(Ljavafx/event/EventHandler;)Ljavafx/scene/control/MenuItemBuilder;
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
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MenuItemBuilder;->onAction:Ljavafx/event/EventHandler;

    .line 134
    move-object v2, v0

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljavafx/scene/control/MenuItemBuilder;->__set(I)V

    .line 135
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public onMenuValidation(Ljavafx/event/EventHandler;)Ljavafx/scene/control/MenuItemBuilder;
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
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MenuItemBuilder;->onMenuValidation:Ljavafx/event/EventHandler;

    .line 146
    move-object v2, v0

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljavafx/scene/control/MenuItemBuilder;->__set(I)V

    .line 147
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public style(Ljava/lang/String;)Ljavafx/scene/control/MenuItemBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MenuItemBuilder;->style:Ljava/lang/String;

    .line 157
    move-object v2, v0

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljavafx/scene/control/MenuItemBuilder;->__set(I)V

    .line 158
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public styleClass(Ljava/util/Collection;)Ljavafx/scene/control/MenuItemBuilder;
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
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MenuItemBuilder;->styleClass:Ljava/util/Collection;

    .line 168
    move-object v2, v0

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljavafx/scene/control/MenuItemBuilder;->__set(I)V

    .line 169
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public varargs styleClass([Ljava/lang/String;)Ljavafx/scene/control/MenuItemBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MenuItemBuilder;->styleClass(Ljava/util/Collection;)Ljavafx/scene/control/MenuItemBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public text(Ljava/lang/String;)Ljavafx/scene/control/MenuItemBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MenuItemBuilder;->text:Ljava/lang/String;

    .line 186
    move-object v2, v0

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljavafx/scene/control/MenuItemBuilder;->__set(I)V

    .line 187
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public userData(Ljava/lang/Object;)Ljavafx/scene/control/MenuItemBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MenuItemBuilder;->userData:Ljava/lang/Object;

    .line 197
    move-object v2, v0

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljavafx/scene/control/MenuItemBuilder;->__set(I)V

    .line 198
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public visible(Z)Ljavafx/scene/control/MenuItemBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/MenuItemBuilder;->visible:Z

    .line 208
    move-object v2, v0

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljavafx/scene/control/MenuItemBuilder;->__set(I)V

    .line 209
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuItemBuilder;, "Ljavafx/scene/control/MenuItemBuilder<TB;>;"
    return-object v0
.end method
