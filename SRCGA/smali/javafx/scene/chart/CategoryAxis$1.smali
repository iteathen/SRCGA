.class Ljavafx/scene/chart/CategoryAxis$1;
.super Ljavafx/css/StyleableDoubleProperty;
.source "CategoryAxis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/CategoryAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/CategoryAxis;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/CategoryAxis;D)V
    .locals 8

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/CategoryAxis;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/chart/CategoryAxis$1;->this$0:Ljavafx/scene/chart/CategoryAxis;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis$1;->this$0:Ljavafx/scene/chart/CategoryAxis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis$1;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/CategoryAxis;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis$1;
    # getter for: Ljavafx/scene/chart/CategoryAxis$StyleableProperties;->START_MARGIN:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/CategoryAxis$StyleableProperties;->access$000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis$1;
    const-string v1, "startMargin"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis$1;->this$0:Ljavafx/scene/chart/CategoryAxis;

    invoke-virtual {v1}, Ljavafx/scene/chart/CategoryAxis;->requestAxisLayout()V

    .line 99
    return-void
.end method
