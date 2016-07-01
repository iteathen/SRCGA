.class Lcom/sun/glass/ui/monocle/InputDeviceRegistry;
.super Ljava/lang/Object;
.source "InputDeviceRegistry.java"


# instance fields
.field protected devices:Ljavafx/collections/ObservableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableSet",
            "<",
            "Lcom/sun/glass/ui/monocle/InputDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/InputDeviceRegistry;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v1, v0

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/sun/glass/ui/monocle/InputDevice;

    .line 38
    invoke-static {v2}, Ljavafx/collections/FXCollections;->observableSet([Ljava/lang/Object;)Ljavafx/collections/ObservableSet;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/InputDeviceRegistry;->devices:Ljavafx/collections/ObservableSet;

    .line 37
    return-void
.end method


# virtual methods
.method getInputDevices()Ljavafx/collections/ObservableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableSet",
            "<",
            "Lcom/sun/glass/ui/monocle/InputDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/InputDeviceRegistry;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/InputDeviceRegistry;->devices:Ljavafx/collections/ObservableSet;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/InputDeviceRegistry;
    return-object v0
.end method
