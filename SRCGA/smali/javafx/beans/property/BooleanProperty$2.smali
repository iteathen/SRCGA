.class Ljavafx/beans/property/BooleanProperty$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "BooleanProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/property/BooleanProperty;->asObject()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method constructor <init>(Ljavafx/beans/property/BooleanProperty;)V
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanProperty$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/beans/property/BooleanProperty;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/BooleanProperty$2;->this$0:Ljavafx/beans/property/BooleanProperty;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    .line 179
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/BooleanProperty$2;->this$0:Ljavafx/beans/property/BooleanProperty;

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalBinding;->bind(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v2

    .line 180
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
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanProperty$2;
    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/beans/property/BooleanProperty$2;->this$0:Ljavafx/beans/property/BooleanProperty;

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalBinding;->unbind(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    move-object v2, v0

    invoke-super {v2}, Ljava/lang/Object;->finalize()V

    .line 198
    .line 199
    return-void

    .line 197
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
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanProperty$2;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/BooleanProperty$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanProperty$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/BooleanProperty$2;->this$0:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/BooleanProperty$2;
    return-object v0
.end method
