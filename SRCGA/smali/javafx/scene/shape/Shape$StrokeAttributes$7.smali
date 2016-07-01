.class Ljavafx/scene/shape/Shape$StrokeAttributes$7;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "Shape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/Shape$StrokeAttributes;->dashArrayProperty()Ljavafx/collections/ObservableList;
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
.field final synthetic this$1:Ljavafx/scene/shape/Shape$StrokeAttributes;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/Shape$StrokeAttributes;)V
    .locals 4

    .prologue
    .line 1411
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$7;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/Shape$StrokeAttributes$7;->this$1:Ljavafx/scene/shape/Shape$StrokeAttributes;

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
    .line 1414
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$7;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljava/lang/Double;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape$StrokeAttributes$7;->this$1:Ljavafx/scene/shape/Shape$StrokeAttributes;

    .line 1415
    # getter for: Ljavafx/scene/shape/Shape$StyleableProperties;->STROKE_DASH_ARRAY:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/shape/Shape$StyleableProperties;->access$2400()Ljavafx/css/CssMetaData;

    move-result-object v3

    .line 1414
    invoke-static {v2, v3}, Ljavafx/scene/shape/Shape$StrokeAttributes;->access$1600(Ljavafx/scene/shape/Shape$StrokeAttributes;Ljavafx/css/CssMetaData;)V

    .line 1416
    return-void
.end method
