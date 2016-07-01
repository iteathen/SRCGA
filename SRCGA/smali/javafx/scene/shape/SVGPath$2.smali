.class Ljavafx/scene/shape/SVGPath$2;
.super Ljavafx/beans/property/StringPropertyBase;
.source "SVGPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/SVGPath;->contentProperty()Ljavafx/beans/property/StringProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/SVGPath;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/SVGPath;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/SVGPath;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/shape/SVGPath$2;->this$0:Ljavafx/scene/shape/SVGPath;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/StringPropertyBase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/SVGPath$2;->this$0:Ljavafx/scene/shape/SVGPath;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/SVGPath$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath$2;
    const-string v1, "content"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/SVGPath$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/SVGPath$2;->this$0:Ljavafx/scene/shape/SVGPath;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/shape/SVGPath;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 123
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/SVGPath$2;->this$0:Ljavafx/scene/shape/SVGPath;

    invoke-static {v1}, Ljavafx/scene/shape/SVGPath;->access$100(Ljavafx/scene/shape/SVGPath;)V

    .line 124
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/SVGPath$2;->this$0:Ljavafx/scene/shape/SVGPath;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/shape/SVGPath;->access$202(Ljavafx/scene/shape/SVGPath;Lcom/sun/javafx/geom/Path2D;)Lcom/sun/javafx/geom/Path2D;

    move-result-object v1

    .line 125
    return-void
.end method
