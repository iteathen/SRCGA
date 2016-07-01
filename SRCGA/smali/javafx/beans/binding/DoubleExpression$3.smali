.class Ljavafx/beans/binding/DoubleExpression$3;
.super Ljavafx/beans/binding/ObjectBinding;
.source "DoubleExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/binding/DoubleExpression;->asObject()Ljavafx/beans/binding/ObjectExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/binding/ObjectBinding",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/beans/binding/DoubleExpression;


# direct methods
.method constructor <init>(Ljavafx/beans/binding/DoubleExpression;)V
    .locals 8

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/beans/binding/DoubleExpression;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/binding/DoubleExpression$3;->this$0:Ljavafx/beans/binding/DoubleExpression;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/ObjectBinding;-><init>()V

    .line 292
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/beans/Observable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/DoubleExpression$3;->this$0:Ljavafx/beans/binding/DoubleExpression;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/DoubleExpression$3;->bind([Ljavafx/beans/Observable;)V

    .line 293
    return-void
.end method


# virtual methods
.method protected computeValue()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/DoubleExpression$3;->this$0:Ljavafx/beans/binding/DoubleExpression;

    invoke-virtual {v1}, Ljavafx/beans/binding/DoubleExpression;->getValue()Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression$3;
    return-object v0
.end method

.method protected bridge synthetic computeValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression$3;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/DoubleExpression$3;->computeValue()Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression$3;
    return-object v0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression$3;
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavafx/beans/Observable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/DoubleExpression$3;->this$0:Ljavafx/beans/binding/DoubleExpression;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2}, Ljavafx/beans/binding/DoubleExpression$3;->unbind([Ljavafx/beans/Observable;)V

    .line 298
    return-void
.end method
