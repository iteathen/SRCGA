.class abstract Ljavafx/scene/layout/TilePane$TileSizeProperty;
.super Ljavafx/beans/property/ReadOnlyDoubleProperty;
.source "TilePane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/layout/TilePane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TileSizeProperty"
.end annotation


# instance fields
.field private helper:Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Ljavafx/scene/layout/TilePane;

.field private valid:Z

.field private value:D


# direct methods
.method constructor <init>(Ljavafx/scene/layout/TilePane;Ljava/lang/String;D)V
    .locals 11

    .prologue
    .line 1194
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$TileSizeProperty;
    move-object v1, p1

    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-wide v3, p3

    .local v3, "initSize":D
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/layout/TilePane$TileSizeProperty;->this$0:Ljavafx/scene/layout/TilePane;

    move-object v5, v0

    invoke-direct {v5}, Ljavafx/beans/property/ReadOnlyDoubleProperty;-><init>()V

    .line 1195
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavafx/scene/layout/TilePane$TileSizeProperty;->name:Ljava/lang/String;

    .line 1196
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Ljavafx/scene/layout/TilePane$TileSizeProperty;->value:D

    .line 1197
    move-object v5, v0

    move-wide v6, v3

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, v5, Ljavafx/scene/layout/TilePane$TileSizeProperty;->valid:Z

    .line 1198
    return-void

    .line 1197
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 1213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$TileSizeProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/TilePane$TileSizeProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/layout/TilePane$TileSizeProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 1214
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1223
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$TileSizeProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Number;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/TilePane$TileSizeProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/layout/TilePane$TileSizeProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 1224
    return-void
.end method

.method public abstract compute()D
.end method

.method public get()D
    .locals 4

    .prologue
    .line 1233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$TileSizeProperty;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/TilePane$TileSizeProperty;->valid:Z

    if-nez v1, :cond_0

    .line 1234
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/TilePane$TileSizeProperty;->compute()D

    move-result-wide v2

    iput-wide v2, v1, Ljavafx/scene/layout/TilePane$TileSizeProperty;->value:D

    .line 1235
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/layout/TilePane$TileSizeProperty;->valid:Z

    .line 1238
    :cond_0
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/TilePane$TileSizeProperty;->value:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$TileSizeProperty;
    return-wide v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$TileSizeProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane$TileSizeProperty;->this$0:Ljavafx/scene/layout/TilePane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$TileSizeProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1208
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$TileSizeProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane$TileSizeProperty;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane$TileSizeProperty;
    return-object v0
.end method

.method public invalidate()V
    .locals 3

    .prologue
    .line 1242
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$TileSizeProperty;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/TilePane$TileSizeProperty;->valid:Z

    if-eqz v1, :cond_0

    .line 1243
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/layout/TilePane$TileSizeProperty;->valid:Z

    .line 1244
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane$TileSizeProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 1246
    :cond_0
    return-void
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 1218
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$TileSizeProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/TilePane$TileSizeProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/layout/TilePane$TileSizeProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 1219
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane$TileSizeProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Number;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/TilePane$TileSizeProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/layout/TilePane$TileSizeProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 1229
    return-void
.end method
