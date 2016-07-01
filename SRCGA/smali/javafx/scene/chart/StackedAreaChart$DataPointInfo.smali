.class final Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;
.super Ljava/lang/Object;
.source "StackedAreaChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/StackedAreaChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DataPointInfo"
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
.field dataItem:Ljavafx/scene/chart/XYChart$Data;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;"
        }
    .end annotation
.end field

.field displayX:D

.field displayY:D

.field dropDown:Z

.field lineTo:Z

.field partOf:Ljavafx/scene/chart/StackedAreaChart$PartOf;

.field skipSymbol:Z

.field x:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TX;"
        }
    .end annotation
.end field

.field y:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TY;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 834
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 829
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->skipSymbol:Z

    .line 830
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->lineTo:Z

    .line 831
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->dropDown:Z

    .line 834
    return-void
.end method

.method constructor <init>(Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/scene/chart/StackedAreaChart$PartOf;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;TX;TY;",
            "Ljavafx/scene/chart/StackedAreaChart$PartOf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 836
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object v2, p2

    .local v2, "x":Ljava/lang/Object;, "TX;"
    move-object v3, p3

    .local v3, "y":Ljava/lang/Object;, "TY;"
    move-object v4, p4

    .local v4, "partOf":Ljavafx/scene/chart/StackedAreaChart$PartOf;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 829
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->skipSymbol:Z

    .line 830
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->lineTo:Z

    .line 831
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->dropDown:Z

    .line 837
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->dataItem:Ljavafx/scene/chart/XYChart$Data;

    .line 838
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    .line 839
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->y:Ljava/lang/Object;

    .line 840
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->partOf:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    .line 841
    return-void
.end method

.method constructor <init>(Z)V
    .locals 4

    .prologue
    .line 843
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    move v1, p1

    .local v1, "dropDown":Z
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 829
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->skipSymbol:Z

    .line 830
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->lineTo:Z

    .line 831
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->dropDown:Z

    .line 844
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->dropDown:Z

    .line 845
    return-void
.end method


# virtual methods
.method public final getX()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation

    .prologue
    .line 860
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    return-object v0
.end method

.method public final getY()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TY;"
        }
    .end annotation

    .prologue
    .line 864
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->y:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    return-object v0
.end method

.method setValues(Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/Object;DDLjavafx/scene/chart/StackedAreaChart$PartOf;ZZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/XYChart$Data",
            "<TX;TY;>;TX;TY;DD",
            "Ljavafx/scene/chart/StackedAreaChart$PartOf;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 849
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;, "Ljavafx/scene/chart/StackedAreaChart$DataPointInfo<TX;TY;>;"
    move-object v1, p1

    .local v1, "item":Ljavafx/scene/chart/XYChart$Data;, "Ljavafx/scene/chart/XYChart$Data<TX;TY;>;"
    move-object/from16 v2, p2

    .local v2, "x":Ljava/lang/Object;, "TX;"
    move-object/from16 v3, p3

    .local v3, "y":Ljava/lang/Object;, "TY;"
    move-wide/from16 v4, p4

    .local v4, "dx":D
    move-wide/from16 v6, p6

    .local v6, "dy":D
    move-object/from16 v8, p8

    .local v8, "partOf":Ljavafx/scene/chart/StackedAreaChart$PartOf;
    move/from16 v9, p9

    .local v9, "skipSymbol":Z
    move/from16 v10, p10

    .local v10, "lineTo":Z
    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->dataItem:Ljavafx/scene/chart/XYChart$Data;

    .line 850
    move-object v11, v0

    move-object v12, v2

    iput-object v12, v11, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->x:Ljava/lang/Object;

    .line 851
    move-object v11, v0

    move-object v12, v3

    iput-object v12, v11, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->y:Ljava/lang/Object;

    .line 852
    move-object v11, v0

    move-wide v12, v4

    iput-wide v12, v11, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayX:D

    .line 853
    move-object v11, v0

    move-wide v12, v6

    iput-wide v12, v11, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->displayY:D

    .line 854
    move-object v11, v0

    move-object v12, v8

    iput-object v12, v11, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->partOf:Ljavafx/scene/chart/StackedAreaChart$PartOf;

    .line 855
    move-object v11, v0

    move v12, v9

    iput-boolean v12, v11, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->skipSymbol:Z

    .line 856
    move-object v11, v0

    move v12, v10

    iput-boolean v12, v11, Ljavafx/scene/chart/StackedAreaChart$DataPointInfo;->lineTo:Z

    .line 857
    return-void
.end method
