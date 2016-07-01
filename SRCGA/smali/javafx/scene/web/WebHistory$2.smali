.class Ljavafx/scene/web/WebHistory$2;
.super Ljavafx/beans/property/SimpleIntegerProperty;
.source "WebHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/web/WebHistory;->maxSizeProperty()Ljavafx/beans/property/IntegerProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/web/WebHistory;


# direct methods
.method constructor <init>(Ljavafx/scene/web/WebHistory;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 9

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/web/WebHistory;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move v4, p4

    .local v4, "x2":I
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/web/WebHistory$2;->this$0:Ljavafx/scene/web/WebHistory;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleIntegerProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public set(I)V
    .locals 6

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory$2;
    move v1, p1

    .local v1, "value":I
    move v2, v1

    if-gez v2, :cond_0

    .line 257
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "value cannot be negative."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/property/SimpleIntegerProperty;->set(I)V

    .line 260
    return-void
.end method
