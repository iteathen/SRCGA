.class Ljavafx/scene/Node$AccessibilityProperties;
.super Ljava/lang/Object;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityProperties"
.end annotation


# instance fields
.field accessibleHelp:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field accessibleRoleDescription:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field accessibleText:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/Node;


# direct methods
.method private constructor <init>(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 9487
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$AccessibilityProperties;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$AccessibilityProperties;->this$0:Ljavafx/scene/Node;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/Node;Ljavafx/scene/Node$1;)V
    .locals 5

    .prologue
    .line 9487
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$AccessibilityProperties;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/Node$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/Node$AccessibilityProperties;-><init>(Ljavafx/scene/Node;)V

    return-void
.end method


# virtual methods
.method getAccessibleHelp()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9504
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$AccessibilityProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$AccessibilityProperties;->accessibleHelp:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 9505
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node$AccessibilityProperties;->this$0:Ljavafx/scene/Node;

    const-string v5, "accessibleHelp"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/Node$AccessibilityProperties;->accessibleHelp:Ljavafx/beans/property/ObjectProperty;

    .line 9507
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$AccessibilityProperties;->accessibleHelp:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$AccessibilityProperties;
    return-object v0
.end method

.method getAccessibleRoleDescription()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9490
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$AccessibilityProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$AccessibilityProperties;->accessibleRoleDescription:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 9491
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node$AccessibilityProperties;->this$0:Ljavafx/scene/Node;

    const-string v5, "accessibleRoleDescription"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/Node$AccessibilityProperties;->accessibleRoleDescription:Ljavafx/beans/property/ObjectProperty;

    .line 9493
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$AccessibilityProperties;->accessibleRoleDescription:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$AccessibilityProperties;
    return-object v0
.end method

.method getAccessibleText()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9497
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$AccessibilityProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$AccessibilityProperties;->accessibleText:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 9498
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node$AccessibilityProperties;->this$0:Ljavafx/scene/Node;

    const-string v5, "accessibleText"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/Node$AccessibilityProperties;->accessibleText:Ljavafx/beans/property/ObjectProperty;

    .line 9500
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$AccessibilityProperties;->accessibleText:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$AccessibilityProperties;
    return-object v0
.end method
