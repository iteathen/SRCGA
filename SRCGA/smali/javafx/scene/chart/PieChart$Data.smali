.class public final Ljavafx/scene/chart/PieChart$Data;
.super Ljava/lang/Object;
.source "PieChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/PieChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation


# instance fields
.field private chart:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/chart/PieChart;",
            ">;"
        }
    .end annotation
.end field

.field private currentPieValue:Ljavafx/beans/property/DoubleProperty;

.field private defaultColorIndex:I

.field private name:Ljavafx/beans/property/StringProperty;

.field private next:Ljavafx/scene/chart/PieChart$Data;

.field private node:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private pieValue:Ljavafx/beans/property/DoubleProperty;

.field private radiusMultiplier:Ljavafx/beans/property/DoubleProperty;

.field private textNode:Ljavafx/scene/text/Text;


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 10

    .prologue
    .line 985
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "value":D
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 827
    move-object v4, v0

    new-instance v5, Ljavafx/scene/text/Text;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljavafx/scene/text/Text;-><init>()V

    iput-object v5, v4, Ljavafx/scene/chart/PieChart$Data;->textNode:Ljavafx/scene/text/Text;

    .line 831
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/chart/PieChart$Data;->next:Ljavafx/scene/chart/PieChart$Data;

    .line 843
    move-object v4, v0

    new-instance v5, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const-string v8, "chart"

    invoke-direct {v6, v7, v8}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v4, Ljavafx/scene/chart/PieChart$Data;->chart:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 860
    move-object v4, v0

    new-instance v5, Ljavafx/scene/chart/PieChart$Data$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/chart/PieChart$Data$1;-><init>(Ljavafx/scene/chart/PieChart$Data;)V

    iput-object v5, v4, Ljavafx/scene/chart/PieChart$Data;->name:Ljavafx/beans/property/StringProperty;

    .line 892
    move-object v4, v0

    new-instance v5, Ljavafx/scene/chart/PieChart$Data$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/chart/PieChart$Data$2;-><init>(Ljavafx/scene/chart/PieChart$Data;)V

    iput-object v5, v4, Ljavafx/scene/chart/PieChart$Data;->pieValue:Ljavafx/beans/property/DoubleProperty;

    .line 925
    move-object v4, v0

    new-instance v5, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const-string v8, "currentPieValue"

    invoke-direct {v6, v7, v8}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v4, Ljavafx/scene/chart/PieChart$Data;->currentPieValue:Ljavafx/beans/property/DoubleProperty;

    .line 942
    move-object v4, v0

    new-instance v5, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const-string v8, "radiusMultiplier"

    invoke-direct {v6, v7, v8}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v4, Ljavafx/scene/chart/PieChart$Data;->radiusMultiplier:Ljavafx/beans/property/DoubleProperty;

    .line 959
    move-object v4, v0

    new-instance v5, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const-string v8, "node"

    invoke-direct {v6, v7, v8}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v4, Ljavafx/scene/chart/PieChart$Data;->node:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 986
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/chart/PieChart$Data;->setName(Ljava/lang/String;)V

    .line 987
    move-object v4, v0

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/chart/PieChart$Data;->setPieValue(D)V

    .line 988
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/PieChart$Data;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v4}, Ljavafx/scene/text/Text;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "text"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const-string v8, "chart-pie-label"

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v4

    .line 989
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/PieChart$Data;->textNode:Ljavafx/scene/text/Text;

    sget-object v5, Ljavafx/scene/AccessibleRole;->TEXT:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 990
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/PieChart$Data;->textNode:Ljavafx/scene/text/Text;

    const-string v5, "slice"

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text;->setAccessibleRoleDescription(Ljava/lang/String;)V

    .line 991
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/PieChart$Data;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v4}, Ljavafx/scene/text/Text;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    invoke-static {}, Ljavafx/application/Platform;->accessibilityActiveProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 992
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/PieChart$Data;->textNode:Ljavafx/scene/text/Text;

    invoke-virtual {v4}, Ljavafx/scene/text/Text;->accessibleTextProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    new-instance v5, Ljavafx/scene/chart/PieChart$Data$3;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/chart/PieChart$Data$3;-><init>(Ljavafx/scene/chart/PieChart$Data;)V

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 998
    return-void
.end method

.method static synthetic access$1000(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/chart/PieChart$Data;->setNode(Ljavafx/scene/Node;)V

    return-void
.end method

.method static synthetic access$1100(Ljavafx/scene/chart/PieChart$Data;)I
    .locals 2

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/chart/PieChart$Data;->defaultColorIndex:I

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/PieChart$Data;
    return v0
.end method

.method static synthetic access$1102(Ljavafx/scene/chart/PieChart$Data;I)I
    .locals 7

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart$Data;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Ljavafx/scene/chart/PieChart$Data;->defaultColorIndex:I

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/chart/PieChart$Data;
    return v0
.end method

.method static synthetic access$1200(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/chart/PieChart$Data;->radiusMultiplierProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/PieChart$Data;
    return-object v0
.end method

.method static synthetic access$1300(Ljavafx/scene/chart/PieChart$Data;)D
    .locals 3

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/chart/PieChart$Data;->getRadiusMultiplier()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/PieChart$Data;
    return-wide v0
.end method

.method static synthetic access$1400(Ljavafx/scene/chart/PieChart$Data;D)V
    .locals 7

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart$Data;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/PieChart$Data;->setRadiusMultiplier(D)V

    return-void
.end method

.method static synthetic access$1500(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;
    .locals 2

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$Data;->next:Ljavafx/scene/chart/PieChart$Data;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/PieChart$Data;
    return-object v0
.end method

.method static synthetic access$1502(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/chart/PieChart$Data;
    .locals 7

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/chart/PieChart$Data;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/chart/PieChart$Data;->next:Ljavafx/scene/chart/PieChart$Data;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/chart/PieChart$Data;
    return-object v0
.end method

.method static synthetic access$1600(Ljavafx/scene/chart/PieChart$Data;Ljavafx/scene/chart/PieChart;)V
    .locals 4

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/chart/PieChart;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/chart/PieChart$Data;->setChart(Ljavafx/scene/chart/PieChart;)V

    return-void
.end method

.method static synthetic access$600(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/scene/text/Text;
    .locals 2

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$Data;->textNode:Ljavafx/scene/text/Text;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/PieChart$Data;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/chart/PieChart$Data;->currentPieValueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/PieChart$Data;
    return-object v0
.end method

.method static synthetic access$800(Ljavafx/scene/chart/PieChart$Data;)D
    .locals 3

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/chart/PieChart$Data;->getCurrentPieValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/PieChart$Data;
    return-wide v0
.end method

.method static synthetic access$900(Ljavafx/scene/chart/PieChart$Data;D)V
    .locals 7

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/PieChart$Data;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/PieChart$Data;->setCurrentPieValue(D)V

    return-void
.end method

.method private currentPieValueProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 936
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$Data;->currentPieValue:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$Data;
    return-object v0
.end method

.method private getCurrentPieValue()D
    .locals 3

    .prologue
    .line 928
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$Data;->currentPieValue:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$Data;
    return-wide v0
.end method

.method private getRadiusMultiplier()D
    .locals 3

    .prologue
    .line 945
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$Data;->radiusMultiplier:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$Data;
    return-wide v0
.end method

.method private radiusMultiplierProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 953
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$Data;->radiusMultiplier:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$Data;
    return-object v0
.end method

.method private setChart(Ljavafx/scene/chart/PieChart;)V
    .locals 4

    .prologue
    .line 850
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/chart/PieChart;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/PieChart$Data;->chart:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->setValue(Ljava/lang/Object;)V

    .line 851
    return-void
.end method

.method private setCurrentPieValue(D)V
    .locals 7

    .prologue
    .line 932
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/PieChart$Data;->currentPieValue:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    .line 933
    return-void
.end method

.method private setNode(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 970
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/PieChart$Data;->node:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->setValue(Ljava/lang/Object;)V

    .line 971
    return-void
.end method

.method private setRadiusMultiplier(D)V
    .locals 7

    .prologue
    .line 949
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/PieChart$Data;->radiusMultiplier:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    .line 950
    return-void
.end method


# virtual methods
.method public final chartProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/chart/PieChart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 854
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$Data;->chart:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$Data;
    return-object v0
.end method

.method public final getChart()Ljavafx/scene/chart/PieChart;
    .locals 2

    .prologue
    .line 846
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$Data;->chart:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/chart/PieChart;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$Data;
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 882
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$Data;->name:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$Data;
    return-object v0
.end method

.method public getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 966
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$Data;->node:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$Data;
    return-object v0
.end method

.method public final getPieValue()D
    .locals 3

    .prologue
    .line 910
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$Data;->pieValue:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$Data;
    return-wide v0
.end method

.method public final nameProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 886
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$Data;->name:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$Data;
    return-object v0
.end method

.method public nodeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 974
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$Data;->node:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$Data;
    return-object v0
.end method

.method public final pieValueProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 918
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/PieChart$Data;->pieValue:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$Data;
    return-object v0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 878
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/PieChart$Data;->name:Ljavafx/beans/property/StringProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->setValue(Ljava/lang/String;)V

    .line 879
    return-void
.end method

.method public final setPieValue(D)V
    .locals 7

    .prologue
    .line 914
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/PieChart$Data;->pieValue:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    .line 915
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1009
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/PieChart$Data;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/PieChart$Data;->getPieValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$Data;
    return-object v0
.end method
