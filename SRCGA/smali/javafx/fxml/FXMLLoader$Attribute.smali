.class Ljavafx/fxml/FXMLLoader$Attribute;
.super Ljava/lang/Object;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Attribute"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final sourceType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1640
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Attribute;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, p3

    .local v3, "value":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1641
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/fxml/FXMLLoader$Attribute;->name:Ljava/lang/String;

    .line 1642
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/fxml/FXMLLoader$Attribute;->sourceType:Ljava/lang/Class;

    .line 1643
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/fxml/FXMLLoader$Attribute;->value:Ljava/lang/String;

    .line 1644
    return-void
.end method
