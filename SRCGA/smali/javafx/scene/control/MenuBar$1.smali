.class Ljavafx/scene/control/MenuBar$1;
.super Ljavafx/css/StyleableBooleanProperty;
.source "MenuBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/MenuBar;->useSystemMenuBarProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/MenuBar;


# direct methods
.method constructor <init>(Ljavafx/scene/control/MenuBar;)V
    .locals 4

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBar$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/MenuBar;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MenuBar$1;->this$0:Ljavafx/scene/control/MenuBar;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableBooleanProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBar$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuBar$1;->this$0:Ljavafx/scene/control/MenuBar;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuBar$1;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/MenuBar;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBar$1;
    # getter for: Ljavafx/scene/control/MenuBar$StyleableProperties;->USE_SYSTEM_MENU_BAR:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/MenuBar$StyleableProperties;->access$000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuBar$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBar$1;
    const-string v1, "useSystemMenuBar"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuBar$1;
    return-object v0
.end method
