.class Ljavafx/scene/text/Text$TextAttribute$6$1;
.super Ljavafx/beans/binding/DoubleBinding;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/text/Text$TextAttribute$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ljavafx/scene/text/Text$TextAttribute$6;


# direct methods
.method constructor <init>(Ljavafx/scene/text/Text$TextAttribute$6;)V
    .locals 8

    .prologue
    .line 1669
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$6$1;
    move-object v1, p1

    .local v1, "this$2":Ljavafx/scene/text/Text$TextAttribute$6;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/text/Text$TextAttribute$6$1;->this$2:Ljavafx/scene/text/Text$TextAttribute$6;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/DoubleBinding;-><init>()V

    .line 1670
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/beans/Observable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/text/Text$TextAttribute$6$1;->this$2:Ljavafx/scene/text/Text$TextAttribute$6;

    iget-object v6, v6, Ljavafx/scene/text/Text$TextAttribute$6;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v6, v6, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    invoke-virtual {v6}, Ljavafx/scene/text/Text;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text$TextAttribute$6$1;->bind([Ljavafx/beans/Observable;)V

    return-void
.end method


# virtual methods
.method protected computeValue()D
    .locals 4

    .prologue
    .line 1675
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$6$1;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text$TextAttribute$6$1;->this$2:Ljavafx/scene/text/Text$TextAttribute$6;

    iget-object v2, v2, Ljavafx/scene/text/Text$TextAttribute$6;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    iget-object v2, v2, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    invoke-static {v2}, Ljavafx/scene/text/Text;->access$3800(Ljavafx/scene/text/Text;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v2

    move-object v1, v2

    .line 1676
    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v2

    neg-float v2, v2

    float-to-double v2, v2

    move-wide v0, v2

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute$6$1;
    return-wide v0
.end method
