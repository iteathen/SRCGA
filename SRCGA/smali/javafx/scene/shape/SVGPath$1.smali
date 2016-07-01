.class Ljavafx/scene/shape/SVGPath$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "SVGPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/SVGPath;->fillRuleProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/shape/FillRule;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/SVGPath;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/SVGPath;Ljavafx/scene/shape/FillRule;)V
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/SVGPath;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/shape/FillRule;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/shape/SVGPath$1;->this$0:Ljavafx/scene/shape/SVGPath;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/SVGPath$1;->this$0:Ljavafx/scene/shape/SVGPath;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/SVGPath$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath$1;
    const-string v1, "fillRule"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/SVGPath$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/SVGPath$1;->this$0:Ljavafx/scene/shape/SVGPath;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_FILLRULE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/shape/SVGPath;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 82
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/SVGPath$1;->this$0:Ljavafx/scene/shape/SVGPath;

    invoke-static {v1}, Ljavafx/scene/shape/SVGPath;->access$000(Ljavafx/scene/shape/SVGPath;)V

    .line 83
    return-void
.end method
