.class Ljavafx/scene/control/Separator$1;
.super Ljavafx/css/StyleableObjectProperty;
.source "Separator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Separator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/geometry/Orientation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Separator;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Separator;Ljavafx/geometry/Orientation;)V
    .locals 5

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Separator;
    move-object v2, p2

    .local v2, "x0":Ljavafx/geometry/Orientation;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/Separator$1;->this$0:Ljavafx/scene/control/Separator;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Separator$1;->this$0:Ljavafx/scene/control/Separator;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Separator$1;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Separator;",
            "Ljavafx/geometry/Orientation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator$1;
    # getter for: Ljavafx/scene/control/Separator$StyleableProperties;->ORIENTATION:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/Separator$StyleableProperties;->access$200()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Separator$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator$1;
    const-string v1, "orientation"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Separator$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 5

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator$1;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Separator$1;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .line 126
    .local v1, "isVertical":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Separator$1;->this$0:Ljavafx/scene/control/Separator;

    # getter for: Ljavafx/scene/control/Separator;->VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/Separator;->access$000()Ljavafx/css/PseudoClass;

    move-result-object v3

    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Separator;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 127
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Separator$1;->this$0:Ljavafx/scene/control/Separator;

    # getter for: Ljavafx/scene/control/Separator;->HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/Separator;->access$100()Ljavafx/css/PseudoClass;

    move-result-object v3

    move v4, v1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Separator;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 128
    return-void

    .line 125
    .end local v1    # "isVertical":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 127
    .restart local v1    # "isVertical":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
