.class final Ljavafx/beans/property/IntegerProperty$1;
.super Ljavafx/beans/property/IntegerPropertyBase;
.source "IntegerProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/property/IntegerProperty;->integerProperty(Ljavafx/beans/property/Property;)Ljavafx/beans/property/IntegerProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$property:Ljavafx/beans/property/Property;


# direct methods
.method constructor <init>(Ljavafx/beans/property/Property;)V
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/IntegerProperty$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/IntegerProperty$1;->val$property:Ljavafx/beans/property/Property;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/IntegerPropertyBase;-><init>()V

    .line 151
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/IntegerProperty$1;->val$property:Ljavafx/beans/property/Property;

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalBinding;->bindNumber(Ljavafx/beans/property/IntegerProperty;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v2

    .line 152
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/IntegerProperty$1;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljavafx/beans/property/IntegerProperty$1;->val$property:Ljavafx/beans/property/Property;

    move-object v3, v0

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalBinding;->unbindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    move-object v2, v0

    invoke-super {v2}, Ljava/lang/Object;->finalize()V

    .line 170
    .line 171
    return-void

    .line 169
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    invoke-super {v2}, Ljava/lang/Object;->finalize()V

    move-object v2, v1

    throw v2
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/IntegerProperty$1;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/IntegerProperty$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/IntegerProperty$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/IntegerProperty$1;->val$property:Ljavafx/beans/property/Property;

    invoke-interface {v1}, Ljavafx/beans/property/Property;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/IntegerProperty$1;
    return-object v0
.end method
