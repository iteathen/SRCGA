.class Ljavafx/scene/text/Text$TextAttribute$7;
.super Ljavafx/beans/binding/ObjectBinding;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/text/Text$TextAttribute;->impl_selectionShapeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
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
    .line 1691
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$7;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/text/Text$TextAttribute;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/text/Text$TextAttribute$7;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/ObjectBinding;-><init>()V

    .line 1692
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljavafx/beans/Observable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/text/Text$TextAttribute$7;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    invoke-virtual {v6}, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionStartProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/text/Text$TextAttribute$7;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    invoke-virtual {v6}, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionEndProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text$TextAttribute$7;->bind([Ljavafx/beans/Observable;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1691
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$7;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute$7;->computeValue()[Ljavafx/scene/shape/PathElement;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute$7;
    return-object v0
.end method

.method protected computeValue()[Ljavafx/scene/shape/PathElement;
    .locals 7

    .prologue
    .line 1694
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$7;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/text/Text$TextAttribute$7;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    invoke-virtual {v3}, Ljavafx/scene/text/Text$TextAttribute;->getImpl_selectionStart()I

    move-result v3

    move v1, v3

    .line 1695
    .local v1, "start":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/text/Text$TextAttribute$7;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    invoke-virtual {v3}, Ljavafx/scene/text/Text$TextAttribute;->getImpl_selectionEnd()I

    move-result v3

    move v2, v3

    .line 1696
    .local v2, "end":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/text/Text$TextAttribute$7;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v3, v3, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    move v4, v1

    move v5, v2

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Ljavafx/scene/text/Text;->access$3900(Ljavafx/scene/text/Text;III)[Ljavafx/scene/shape/PathElement;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute$7;
    return-object v0
.end method
