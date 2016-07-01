.class Ljavafx/scene/text/Text$TextAttribute$11;
.super Ljavafx/beans/binding/ObjectBinding;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/text/Text$TextAttribute;->impl_caretShapeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/binding/ObjectBinding",
        "<[",
        "Ljavafx/scene/shape/PathElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/text/Text$TextAttribute;


# direct methods
.method constructor <init>(Ljavafx/scene/text/Text$TextAttribute;)V
    .locals 8

    .prologue
    .line 1777
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$11;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/text/Text$TextAttribute;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/text/Text$TextAttribute$11;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/ObjectBinding;-><init>()V

    .line 1778
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljavafx/beans/Observable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/text/Text$TextAttribute$11;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    invoke-virtual {v6}, Ljavafx/scene/text/Text$TextAttribute;->impl_caretPositionProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/text/Text$TextAttribute$11;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    invoke-virtual {v6}, Ljavafx/scene/text/Text$TextAttribute;->impl_caretBiasProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text$TextAttribute$11;->bind([Ljavafx/beans/Observable;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1777
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$11;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute$11;->computeValue()[Ljavafx/scene/shape/PathElement;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute$11;
    return-object v0
.end method

.method protected computeValue()[Ljavafx/scene/shape/PathElement;
    .locals 13

    .prologue
    .line 1780
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/Text$TextAttribute$11;
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/text/Text$TextAttribute$11;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    invoke-virtual {v8}, Ljavafx/scene/text/Text$TextAttribute;->getImpl_caretPosition()I

    move-result v8

    move v2, v8

    .line 1781
    .local v2, "pos":I
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/text/Text$TextAttribute$11;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v8, v8, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    invoke-static {v8}, Ljavafx/scene/text/Text;->access$000(Ljavafx/scene/text/Text;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v3, v8

    .line 1782
    .local v3, "length":I
    const/4 v8, 0x0

    move v9, v2

    if-gt v8, v9, :cond_0

    move v8, v2

    move v9, v3

    if-gt v8, v9, :cond_0

    .line 1783
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/text/Text$TextAttribute$11;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    invoke-virtual {v8}, Ljavafx/scene/text/Text$TextAttribute;->isImpl_caretBias()Z

    move-result v8

    move v4, v8

    .line 1784
    .local v4, "bias":Z
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/text/Text$TextAttribute$11;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v8, v8, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    invoke-virtual {v8}, Ljavafx/scene/text/Text;->getX()D

    move-result-wide v8

    double-to-float v8, v8

    move v5, v8

    .line 1785
    .local v5, "x":F
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/text/Text$TextAttribute$11;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v8, v8, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    invoke-virtual {v8}, Ljavafx/scene/text/Text;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    move-object v9, v1

    iget-object v9, v9, Ljavafx/scene/text/Text$TextAttribute$11;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v9, v9, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    invoke-static {v9}, Ljavafx/scene/text/Text;->access$4400(Ljavafx/scene/text/Text;)F

    move-result v9

    sub-float/2addr v8, v9

    move v6, v8

    .line 1786
    .local v6, "y":F
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/text/Text$TextAttribute$11;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v8, v8, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    invoke-static {v8}, Ljavafx/scene/text/Text;->access$700(Ljavafx/scene/text/Text;)Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v8

    move-object v7, v8

    .line 1787
    .local v7, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    move-object v8, v7

    move v9, v2

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/sun/javafx/scene/text/TextLayout;->getCaretShape(IZFF)[Ljavafx/scene/shape/PathElement;

    move-result-object v8

    move-object v1, v8

    .line 1789
    .end local v1    # "this":Ljavafx/scene/text/Text$TextAttribute$11;
    .end local v4    # "bias":Z
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v7    # "layout":Lcom/sun/javafx/scene/text/TextLayout;
    :goto_0
    return-object v1

    .restart local v1    # "this":Ljavafx/scene/text/Text$TextAttribute$11;
    :cond_0
    # getter for: Ljavafx/scene/text/Text;->EMPTY_PATH_ELEMENT_ARRAY:[Ljavafx/scene/shape/PathElement;
    invoke-static {}, Ljavafx/scene/text/Text;->access$4500()[Ljavafx/scene/shape/PathElement;

    move-result-object v8

    move-object v1, v8

    goto :goto_0
.end method
