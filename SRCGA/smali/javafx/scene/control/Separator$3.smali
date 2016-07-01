.class Ljavafx/scene/control/Separator$3;
.super Ljavafx/css/StyleableObjectProperty;
.source "Separator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Separator;->valignmentProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/geometry/VPos;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Separator;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Separator;Ljavafx/geometry/VPos;)V
    .locals 5

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Separator;
    move-object v2, p2

    .local v2, "x0":Ljavafx/geometry/VPos;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/Separator$3;->this$0:Ljavafx/scene/control/Separator;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Separator$3;->this$0:Ljavafx/scene/control/Separator;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Separator$3;
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
            "Ljavafx/geometry/VPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator$3;
    # getter for: Ljavafx/scene/control/Separator$StyleableProperties;->VALIGNMENT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/Separator$StyleableProperties;->access$400()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Separator$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Separator$3;
    const-string v1, "valignment"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Separator$3;
    return-object v0
.end method
