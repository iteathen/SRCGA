.class public final Ljavafx/scene/chart/XYChart$Data;
.super Ljava/lang/Object;
.source "XYChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/XYChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private currentExtraValue:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private currentX:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<TX;>;"
        }
    .end annotation
.end field

.field private currentY:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<TY;>;"
        }
    .end annotation
.end field

.field private extraValue:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private node:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private series:Ljavafx/scene/chart/XYChart$Series;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;"
        }
    .end annotation
.end field

.field private setToRemove:Z

.field private xValue:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<TX;>;"
        }
    .end annotation
.end field

.field private yValue:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<TY;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 1386
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1192
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/chart/XYChart$Data;->setToRemove:Z

    .line 1200
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/XYChart$Data$1;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/chart/XYChart$Data$1;-><init>(Ljavafx/scene/chart/XYChart$Data;)V

    iput-object v2, v1, Ljavafx/scene/chart/XYChart$Data;->xValue:Ljavafx/beans/property/ObjectProperty;

    .line 1247
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/XYChart$Data$2;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/chart/XYChart$Data$2;-><init>(Ljavafx/scene/chart/XYChart$Data;)V

    iput-object v2, v1, Ljavafx/scene/chart/XYChart$Data;->yValue:Ljavafx/beans/property/ObjectProperty;

    .line 1298
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/XYChart$Data$3;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/chart/XYChart$Data$3;-><init>(Ljavafx/scene/chart/XYChart$Data;)V

    iput-object v2, v1, Ljavafx/scene/chart/XYChart$Data;->extraValue:Ljavafx/beans/property/ObjectProperty;

    .line 1330
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/XYChart$Data$4;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "node"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/XYChart$Data$4;-><init>(Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/chart/XYChart$Data;->node:Ljavafx/beans/property/ObjectProperty;

    .line 1355
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "currentX"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/chart/XYChart$Data;->currentX:Ljavafx/beans/property/ObjectProperty;

    .line 1366
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "currentY"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/chart/XYChart$Data;->currentY:Ljavafx/beans/property/ObjectProperty;

    .line 1376
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "currentExtraValue"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/chart/XYChart$Data;->currentExtraValue:Ljavafx/beans/property/ObjectProperty;

    .line 1386
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;TY;)V"
        }
    .end annotation

    .prologue
    .line 1395
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, p1

    .local v1, "xValue":Ljava/lang/Object;, "TX;"
    move-object v2, p2

    .local v2, "yValue":Ljava/lang/Object;, "TY;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1192
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/chart/XYChart$Data;->setToRemove:Z

    .line 1200
    move-object v3, v0

    new-instance v4, Ljavafx/scene/chart/XYChart$Data$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/chart/XYChart$Data$1;-><init>(Ljavafx/scene/chart/XYChart$Data;)V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart$Data;->xValue:Ljavafx/beans/property/ObjectProperty;

    .line 1247
    move-object v3, v0

    new-instance v4, Ljavafx/scene/chart/XYChart$Data$2;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/chart/XYChart$Data$2;-><init>(Ljavafx/scene/chart/XYChart$Data;)V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart$Data;->yValue:Ljavafx/beans/property/ObjectProperty;

    .line 1298
    move-object v3, v0

    new-instance v4, Ljavafx/scene/chart/XYChart$Data$3;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/chart/XYChart$Data$3;-><init>(Ljavafx/scene/chart/XYChart$Data;)V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart$Data;->extraValue:Ljavafx/beans/property/ObjectProperty;

    .line 1330
    move-object v3, v0

    new-instance v4, Ljavafx/scene/chart/XYChart$Data$4;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v0

    const-string v8, "node"

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/chart/XYChart$Data$4;-><init>(Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart$Data;->node:Ljavafx/beans/property/ObjectProperty;

    .line 1355
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const-string v7, "currentX"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart$Data;->currentX:Ljavafx/beans/property/ObjectProperty;

    .line 1366
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const-string v7, "currentY"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart$Data;->currentY:Ljavafx/beans/property/ObjectProperty;

    .line 1376
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const-string v7, "currentExtraValue"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/chart/XYChart$Data;->currentExtraValue:Ljavafx/beans/property/ObjectProperty;

    .line 1396
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart$Data;->setXValue(Ljava/lang/Object;)V

    .line 1397
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart$Data;->setYValue(Ljava/lang/Object;)V

    .line 1398
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart$Data;->setCurrentX(Ljava/lang/Object;)V

    .line 1399
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    .line 1400
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;TY;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1410
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, p1

    .local v1, "xValue":Ljava/lang/Object;, "TX;"
    move-object v2, p2

    .local v2, "yValue":Ljava/lang/Object;, "TY;"
    move-object v3, p3

    .local v3, "extraValue":Ljava/lang/Object;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1192
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/scene/chart/XYChart$Data;->setToRemove:Z

    .line 1200
    move-object v4, v0

    new-instance v5, Ljavafx/scene/chart/XYChart$Data$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/chart/XYChart$Data$1;-><init>(Ljavafx/scene/chart/XYChart$Data;)V

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$Data;->xValue:Ljavafx/beans/property/ObjectProperty;

    .line 1247
    move-object v4, v0

    new-instance v5, Ljavafx/scene/chart/XYChart$Data$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/chart/XYChart$Data$2;-><init>(Ljavafx/scene/chart/XYChart$Data;)V

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$Data;->yValue:Ljavafx/beans/property/ObjectProperty;

    .line 1298
    move-object v4, v0

    new-instance v5, Ljavafx/scene/chart/XYChart$Data$3;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/chart/XYChart$Data$3;-><init>(Ljavafx/scene/chart/XYChart$Data;)V

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$Data;->extraValue:Ljavafx/beans/property/ObjectProperty;

    .line 1330
    move-object v4, v0

    new-instance v5, Ljavafx/scene/chart/XYChart$Data$4;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v0

    const-string v9, "node"

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/chart/XYChart$Data$4;-><init>(Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$Data;->node:Ljavafx/beans/property/ObjectProperty;

    .line 1355
    move-object v4, v0

    new-instance v5, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    const-string v8, "currentX"

    invoke-direct {v6, v7, v8}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$Data;->currentX:Ljavafx/beans/property/ObjectProperty;

    .line 1366
    move-object v4, v0

    new-instance v5, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    const-string v8, "currentY"

    invoke-direct {v6, v7, v8}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$Data;->currentY:Ljavafx/beans/property/ObjectProperty;

    .line 1376
    move-object v4, v0

    new-instance v5, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    const-string v8, "currentExtraValue"

    invoke-direct {v6, v7, v8}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$Data;->currentExtraValue:Ljavafx/beans/property/ObjectProperty;

    .line 1411
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/XYChart$Data;->setXValue(Ljava/lang/Object;)V

    .line 1412
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/XYChart$Data;->setYValue(Ljava/lang/Object;)V

    .line 1413
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/XYChart$Data;->setExtraValue(Ljava/lang/Object;)V

    .line 1414
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/XYChart$Data;->setCurrentX(Ljava/lang/Object;)V

    .line 1415
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/XYChart$Data;->setCurrentY(Ljava/lang/Object;)V

    .line 1416
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/XYChart$Data;->setCurrentExtraValue(Ljava/lang/Object;)V

    .line 1417
    return-void
.end method

.method static synthetic access$1800(Ljavafx/scene/chart/XYChart$Data;)Ljavafx/scene/chart/XYChart$Series;
    .locals 2

    .prologue
    .line 1189
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart$Data;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Data;->series:Ljavafx/scene/chart/XYChart$Series;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/XYChart$Data;
    return-object v0
.end method

.method static synthetic access$2200(Ljavafx/scene/chart/XYChart$Data;)Z
    .locals 2

    .prologue
    .line 1189
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart$Data;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/chart/XYChart$Data;->setToRemove:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/XYChart$Data;
    return v0
.end method

.method static synthetic access$2202(Ljavafx/scene/chart/XYChart$Data;Z)Z
    .locals 7

    .prologue
    .line 1189
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/XYChart$Data;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/chart/XYChart$Data;->setToRemove:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/chart/XYChart$Data;
    return v0
.end method


# virtual methods
.method public final XValueProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<TX;>;"
        }
    .end annotation

    .prologue
    .line 1244
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Data;->xValue:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    return-object v0
.end method

.method public final YValueProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<TY;>;"
        }
    .end annotation

    .prologue
    .line 1292
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Data;->yValue:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    return-object v0
.end method

.method final currentExtraValueProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1379
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Data;->currentExtraValue:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    return-object v0
.end method

.method final currentXProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<TX;>;"
        }
    .end annotation

    .prologue
    .line 1358
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Data;->currentX:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    return-object v0
.end method

.method final currentYProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<TY;>;"
        }
    .end annotation

    .prologue
    .line 1369
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Data;->currentY:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    return-object v0
.end method

.method public final extraValueProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1320
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Data;->extraValue:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    return-object v0
.end method

.method final getCurrentExtraValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1377
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Data;->currentExtraValue:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    return-object v0
.end method

.method final getCurrentX()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation

    .prologue
    .line 1356
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Data;->currentX:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    return-object v0
.end method

.method final getCurrentY()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TY;"
        }
    .end annotation

    .prologue
    .line 1367
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Data;->currentY:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    return-object v0
.end method

.method public final getExtraValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1318
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Data;->extraValue:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    return-object v0
.end method

.method public final getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 1345
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Data;->node:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    return-object v0
.end method

.method public final getXValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation

    .prologue
    .line 1228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Data;->xValue:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    return-object v0
.end method

.method public final getYValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TY;"
        }
    .end annotation

    .prologue
    .line 1275
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Data;->yValue:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    return-object v0
.end method

.method public final nodeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1347
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/XYChart$Data;->node:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    return-object v0
.end method

.method final setCurrentExtraValue(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1378
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data;->currentExtraValue:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method final setCurrentX(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .prologue
    .line 1357
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TX;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data;->currentX:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method final setCurrentY(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TY;)V"
        }
    .end annotation

    .prologue
    .line 1368
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TY;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data;->currentY:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setExtraValue(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1319
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data;->extraValue:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setNode(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 1346
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data;->node:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method setSeries(Ljavafx/scene/chart/XYChart$Series;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Series",
            "<TX;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 1196
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, p1

    .local v1, "series":Ljavafx/scene/chart/XYChart$Series;, "Ljavafx/scene/chart/XYChart$Series<TX;TY;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/XYChart$Data;->series:Ljavafx/scene/chart/XYChart$Series;

    .line 1197
    return-void
.end method

.method public final setXValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .prologue
    .line 1234
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TX;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data;->xValue:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1237
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data;->currentX:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data;->series:Ljavafx/scene/chart/XYChart$Series;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data;->series:Ljavafx/scene/chart/XYChart$Series;

    .line 1238
    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Series;->getChart()Ljavafx/scene/chart/XYChart;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data;->currentX:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    .line 1239
    :cond_1
    return-void
.end method

.method public final setYValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TY;)V"
        }
    .end annotation

    .prologue
    .line 1281
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TY;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data;->yValue:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1284
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data;->currentY:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data;->series:Ljavafx/scene/chart/XYChart$Series;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data;->series:Ljavafx/scene/chart/XYChart$Series;

    .line 1285
    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Series;->getChart()Ljavafx/scene/chart/XYChart;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$Data;->currentY:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    .line 1287
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1426
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Data;->getXValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Data;->getYValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Data;->getExtraValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    return-object v0
.end method
