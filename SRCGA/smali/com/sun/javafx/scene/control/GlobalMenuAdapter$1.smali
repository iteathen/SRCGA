.class Lcom/sun/javafx/scene/control/GlobalMenuAdapter$1;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "GlobalMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/GlobalMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Lcom/sun/javafx/menu/MenuItemBase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/GlobalMenuAdapter;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/GlobalMenuAdapter;)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/GlobalMenuAdapter$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/GlobalMenuAdapter;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/GlobalMenuAdapter$1;->this$0:Lcom/sun/javafx/scene/control/GlobalMenuAdapter;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Lcom/sun/javafx/menu/MenuItemBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Lcom/sun/javafx/menu/MenuItemBase;>;"
    return-void
.end method
