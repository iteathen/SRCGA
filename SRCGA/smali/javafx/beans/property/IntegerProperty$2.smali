.class Ljavafx/beans/property/IntegerProperty$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "IntegerProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/property/IntegerProperty;->asObject()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/beans/property/IntegerProperty;


# direct methods
.method constructor <init>(Ljavafx/beans/property/IntegerProperty;)V
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/IntegerProperty$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/beans/property/IntegerProperty;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/IntegerProperty$2;->this$0:Ljavafx/beans/property/IntegerProperty;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    .line 199
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/IntegerProperty$2;->this$0:Ljavafx/beans/property/IntegerProperty;

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalBinding;->bindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/IntegerProperty;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v2

    .line 200
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
    .line 215
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/IntegerProperty$2;
    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/beans/property/IntegerProperty$2;->this$0:Ljavafx/beans/property/IntegerProperty;

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalBinding;->unbindNumber(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    move-object v2, v0

    invoke-super {v2}, Ljava/lang/Object;->finalize()V

    .line 218
    .line 219
    return-void

    .line 217
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
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/IntegerProperty$2;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/IntegerProperty$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/IntegerProperty$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/IntegerProperty$2;->this$0:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/IntegerProperty$2;
    return-object v0
.end method
