.class Ljavafx/scene/text/Text$4;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/text/Text;->yProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/text/Text;


# direct methods
.method constructor <init>(Ljavafx/scene/text/Text;)V
    .locals 4

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/text/Text;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/text/Text$4;->this$0:Ljavafx/scene/text/Text;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$4;->this$0:Ljavafx/scene/text/Text;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$4;
    const-string v1, "y"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$4;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$4;->this$0:Ljavafx/scene/text/Text;

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->impl_geomChanged()V

    .line 460
    return-void
.end method
