.class Ljavafx/scene/chart/CategoryAxis$3;
.super Ljavafx/css/StyleableBooleanProperty;
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
.method constructor <init>(Ljavafx/scene/chart/CategoryAxis;Z)V
    .locals 5

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/CategoryAxis;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/CategoryAxis$3;->this$0:Ljavafx/scene/chart/CategoryAxis;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis$3;->this$0:Ljavafx/scene/chart/CategoryAxis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis$3;
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis$3;
    # getter for: Ljavafx/scene/chart/CategoryAxis$StyleableProperties;->GAP_START_AND_END:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/CategoryAxis$StyleableProperties;->access$200()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis$3;
    const-string v1, "gapStartAndEnd"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxis$3;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/CategoryAxis$3;->this$0:Ljavafx/scene/chart/CategoryAxis;

    invoke-virtual {v1}, Ljavafx/scene/chart/CategoryAxis;->requestAxisLayout()V

    .line 150
    return-void
.end method
