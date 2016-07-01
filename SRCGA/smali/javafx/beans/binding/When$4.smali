.class final Ljavafx/beans/binding/When$4;
.super Ljavafx/beans/binding/IntegerBinding;
.source "When.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/binding/When;->createNumberCondition(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final observer:Ljavafx/beans/InvalidationListener;

.field final synthetic val$condition:Ljavafx/beans/value/ObservableBooleanValue;

.field final synthetic val$otherwiseValue:Ljavafx/beans/value/ObservableNumberValue;

.field final synthetic val$thenValue:Ljavafx/beans/value/ObservableNumberValue;


# direct methods
.method constructor <init>(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V
    .locals 13

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$4;
    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/binding/When$4;->val$condition:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/beans/binding/When$4;->val$thenValue:Ljavafx/beans/value/ObservableNumberValue;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/beans/binding/When$4;->val$otherwiseValue:Ljavafx/beans/value/ObservableNumberValue;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/binding/IntegerBinding;-><init>()V

    .line 213
    move-object v4, v0

    new-instance v5, Ljavafx/beans/binding/When$WhenListener;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Ljavafx/beans/binding/When$4;->val$condition:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v9, v0

    iget-object v9, v9, Ljavafx/beans/binding/When$4;->val$thenValue:Ljavafx/beans/value/ObservableNumberValue;

    move-object v10, v0

    iget-object v10, v10, Ljavafx/beans/binding/When$4;->val$otherwiseValue:Ljavafx/beans/value/ObservableNumberValue;

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Ljavafx/beans/binding/When$WhenListener;-><init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/binding/When$1;)V

    iput-object v5, v4, Ljavafx/beans/binding/When$4;->observer:Ljavafx/beans/InvalidationListener;

    .line 215
    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/When$4;->val$condition:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$4;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 216
    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/When$4;->val$thenValue:Ljavafx/beans/value/ObservableNumberValue;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$4;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableNumberValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 217
    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/When$4;->val$otherwiseValue:Ljavafx/beans/value/ObservableNumberValue;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/When$4;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableNumberValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 218
    return-void
.end method


# virtual methods
.method protected computeValue()I
    .locals 9

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$4;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$4;->val$condition:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v2

    move v1, v2

    .line 230
    .local v1, "conditionValue":Z
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Condition of ternary binding expression was evaluated: {0}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$4;->val$thenValue:Ljavafx/beans/value/ObservableNumberValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableNumberValue;->intValue()I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/When$4;
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/When$4;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$4;->val$otherwiseValue:Ljavafx/beans/value/ObservableNumberValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableNumberValue;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$4;->val$condition:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$4;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableBooleanValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 223
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$4;->val$thenValue:Ljavafx/beans/value/ObservableNumberValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$4;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableNumberValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 224
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/When$4;->val$otherwiseValue:Ljavafx/beans/value/ObservableNumberValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/When$4;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableNumberValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 225
    return-void
.end method

.method public getDependencies()Ljavafx/collections/ObservableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/When$4;
    const/4 v1, 0x3

    new-array v1, v1, [Ljavafx/beans/value/ObservableValue;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/When$4;->val$condition:Ljavafx/beans/value/ObservableBooleanValue;

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/When$4;->val$thenValue:Ljavafx/beans/value/ObservableNumberValue;

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/When$4;->val$otherwiseValue:Ljavafx/beans/value/ObservableNumberValue;

    aput-object v4, v2, v3

    .line 238
    invoke-static {v1}, Ljavafx/collections/FXCollections;->observableArrayList([Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v1

    .line 237
    invoke-static {v1}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/When$4;
    return-object v0
.end method
