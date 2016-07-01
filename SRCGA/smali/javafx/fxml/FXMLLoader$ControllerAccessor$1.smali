.class Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;
.super Ljava/lang/Object;
.source "FXMLLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/fxml/FXMLLoader$ControllerAccessor;->addAccessibleMembers(Ljava/lang/Class;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/fxml/FXMLLoader$ControllerAccessor;

.field final synthetic val$finalAllowedMemberAccess:I

.field final synthetic val$membersType:I

.field final synthetic val$type:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljavafx/fxml/FXMLLoader$ControllerAccessor;ILjava/lang/Class;I)V
    .locals 7

    .prologue
    .line 3417
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/fxml/FXMLLoader$ControllerAccessor;
    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;->this$0:Ljavafx/fxml/FXMLLoader$ControllerAccessor;

    move-object v5, v0

    move v6, v2

    iput v6, v5, Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;->val$membersType:I

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;->val$type:Ljava/lang/Class;

    move-object v5, v0

    move v6, v4

    iput v6, v5, Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;->val$finalAllowedMemberAccess:I

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3417
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;->run()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 3420
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;
    move-object v1, v0

    iget v1, v1, Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;->val$membersType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3421
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;->this$0:Ljavafx/fxml/FXMLLoader$ControllerAccessor;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;->val$type:Ljava/lang/Class;

    move-object v3, v0

    iget v3, v3, Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;->val$finalAllowedMemberAccess:I

    invoke-static {v1, v2, v3}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->access$3900(Ljavafx/fxml/FXMLLoader$ControllerAccessor;Ljava/lang/Class;I)V

    .line 3428
    :goto_0
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;
    return-object v0

    .line 3424
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;->this$0:Ljavafx/fxml/FXMLLoader$ControllerAccessor;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;->val$type:Ljava/lang/Class;

    move-object v3, v0

    iget v3, v3, Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;->val$finalAllowedMemberAccess:I

    invoke-static {v1, v2, v3}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->access$4000(Ljavafx/fxml/FXMLLoader$ControllerAccessor;Ljava/lang/Class;I)V

    goto :goto_0
.end method
