.class Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;
.super Ljava/lang/Object;
.source "ProxyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/fxml/builder/ProxyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnnotationValue"
.end annotation


# instance fields
.field private final defaultValue:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/String;
    move-object v3, p3

    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 566
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;->name:Ljava/lang/String;

    .line 567
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;->defaultValue:Ljava/lang/String;

    .line 568
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;->type:Ljava/lang/Class;

    .line 569
    return-void
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 576
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;->defaultValue:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;
    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;->type:Ljava/lang/Class;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder$AnnotationValue;
    return-object v0
.end method
