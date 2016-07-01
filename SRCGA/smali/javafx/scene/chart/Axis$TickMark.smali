.class public final Ljavafx/scene/chart/Axis$TickMark;
.super Ljava/lang/Object;
.source "Axis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/Axis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TickMark"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private label:Ljavafx/beans/property/StringProperty;

.field private position:Ljavafx/beans/property/DoubleProperty;

.field textNode:Ljavafx/scene/text/Text;

.field private textVisible:Ljavafx/beans/property/BooleanProperty;

.field private value:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 1089
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1018
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/Axis$TickMark$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/chart/Axis$TickMark$1;-><init>(Ljavafx/scene/chart/Axis$TickMark;)V

    iput-object v2, v1, Ljavafx/scene/chart/Axis$TickMark;->label:Ljavafx/beans/property/StringProperty;

    .line 1040
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "value"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/chart/Axis$TickMark;->value:Ljavafx/beans/property/ObjectProperty;

    .line 1048
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "position"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/chart/Axis$TickMark;->position:Ljavafx/beans/property/DoubleProperty;

    .line 1053
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljavafx/scene/text/Text;-><init>()V

    iput-object v2, v1, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    .line 1056
    move-object v1, v0

    new-instance v2, Ljavafx/scene/chart/Axis$TickMark$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/Axis$TickMark$2;-><init>(Ljavafx/scene/chart/Axis$TickMark;Z)V

    iput-object v2, v1, Ljavafx/scene/chart/Axis$TickMark;->textVisible:Ljavafx/beans/property/BooleanProperty;

    .line 1090
    return-void
.end method


# virtual methods
.method public final getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1033
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$TickMark;->label:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    return-object v0
.end method

.method public final getPosition()D
    .locals 3

    .prologue
    .line 1049
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$TickMark;->position:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    return-wide v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1041
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$TickMark;->value:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    return-object v0
.end method

.method public final isTextVisible()Z
    .locals 2

    .prologue
    .line 1078
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$TickMark;->textVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    return v0
.end method

.method public final labelProperty()Ljavafx/beans/binding/StringExpression;
    .locals 2

    .prologue
    .line 1035
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$TickMark;->label:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    return-object v0
.end method

.method public final positionProperty()Ljavafx/beans/binding/DoubleExpression;
    .locals 2

    .prologue
    .line 1051
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$TickMark;->position:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    return-object v0
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1034
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis$TickMark;->label:Ljavafx/beans/property/StringProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPosition(D)V
    .locals 7

    .prologue
    .line 1050
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/Axis$TickMark;->position:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final setTextVisible(Z)V
    .locals 4

    .prologue
    .line 1084
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis$TickMark;->textVisible:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1042
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object v1, p1

    .local v1, "v":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis$TickMark;->value:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1097
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$TickMark;->value:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    return-object v0
.end method

.method public final valueProperty()Ljavafx/beans/binding/ObjectExpression;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/binding/ObjectExpression",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1043
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$TickMark;->value:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    return-object v0
.end method
