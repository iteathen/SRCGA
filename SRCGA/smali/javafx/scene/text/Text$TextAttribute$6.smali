.class Ljavafx/scene/text/Text$TextAttribute$6;
.super Ljavafx/beans/property/ReadOnlyDoubleWrapper;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/text/Text$TextAttribute;->baselineOffsetProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/text/Text$TextAttribute;


# direct methods
.method constructor <init>(Ljavafx/scene/text/Text$TextAttribute;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 1668
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute$6;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/text/Text$TextAttribute;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/text/Text$TextAttribute$6;->this$1:Ljavafx/scene/text/Text$TextAttribute;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1669
    move-object v4, v0

    new-instance v5, Ljavafx/scene/text/Text$TextAttribute$6$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/text/Text$TextAttribute$6$1;-><init>(Ljavafx/scene/text/Text$TextAttribute$6;)V

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text$TextAttribute$6;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 1678
    return-void
.end method
