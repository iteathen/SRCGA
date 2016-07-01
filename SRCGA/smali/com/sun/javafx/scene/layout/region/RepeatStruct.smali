.class public final Lcom/sun/javafx/scene/layout/region/RepeatStruct;
.super Ljava/lang/Object;
.source "RepeatStruct.java"


# instance fields
.field public final repeatX:Ljavafx/scene/layout/BackgroundRepeat;

.field public final repeatY:Ljavafx/scene/layout/BackgroundRepeat;


# direct methods
.method public constructor <init>(Ljavafx/scene/layout/BackgroundRepeat;Ljavafx/scene/layout/BackgroundRepeat;)V
    .locals 5

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    move-object v1, p1

    .local v1, "repeatX":Ljavafx/scene/layout/BackgroundRepeat;
    move-object v2, p2

    .local v2, "repeatY":Ljavafx/scene/layout/BackgroundRepeat;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/layout/region/RepeatStruct;->repeatX:Ljavafx/scene/layout/BackgroundRepeat;

    .line 41
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/layout/region/RepeatStruct;->repeatY:Ljavafx/scene/layout/BackgroundRepeat;

    .line 42
    return-void
.end method
