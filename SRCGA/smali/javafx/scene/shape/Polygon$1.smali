.class Ljavafx/scene/shape/Polygon$1;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "Polygon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/shape/Polygon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/Polygon;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/Polygon;)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Polygon$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/Polygon;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/Polygon$1;->this$0:Ljavafx/scene/shape/Polygon;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Polygon$1;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljava/lang/Double;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Polygon$1;->this$0:Ljavafx/scene/shape/Polygon;

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Polygon;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 87
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Polygon$1;->this$0:Ljavafx/scene/shape/Polygon;

    invoke-static {v2}, Ljavafx/scene/shape/Polygon;->access$000(Ljavafx/scene/shape/Polygon;)V

    .line 88
    return-void
.end method
