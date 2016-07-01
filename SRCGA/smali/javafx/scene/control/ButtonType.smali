.class public final Ljavafx/scene/control/ButtonType;
.super Ljava/lang/Object;
.source "ButtonType.java"


# static fields
.field public static final APPLY:Ljavafx/scene/control/ButtonType;

.field public static final CANCEL:Ljavafx/scene/control/ButtonType;

.field public static final CLOSE:Ljavafx/scene/control/ButtonType;

.field public static final FINISH:Ljavafx/scene/control/ButtonType;

.field public static final NEXT:Ljavafx/scene/control/ButtonType;

.field public static final NO:Ljavafx/scene/control/ButtonType;

.field public static final OK:Ljavafx/scene/control/ButtonType;

.field public static final PREVIOUS:Ljavafx/scene/control/ButtonType;

.field public static final YES:Ljavafx/scene/control/ButtonType;


# instance fields
.field private final buttonData:Ljavafx/scene/control/ButtonBar$ButtonData;

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 50
    new-instance v0, Ljavafx/scene/control/ButtonType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "Dialog.apply.button"

    .line 51
    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/ButtonBar$ButtonData;->APPLY:Ljavafx/scene/control/ButtonBar$ButtonData;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/ButtonType;-><init>(Ljava/lang/String;Ljavafx/scene/control/ButtonBar$ButtonData;)V

    sput-object v0, Ljavafx/scene/control/ButtonType;->APPLY:Ljavafx/scene/control/ButtonType;

    .line 57
    new-instance v0, Ljavafx/scene/control/ButtonType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "Dialog.ok.button"

    .line 58
    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/ButtonBar$ButtonData;->OK_DONE:Ljavafx/scene/control/ButtonBar$ButtonData;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/ButtonType;-><init>(Ljava/lang/String;Ljavafx/scene/control/ButtonBar$ButtonData;)V

    sput-object v0, Ljavafx/scene/control/ButtonType;->OK:Ljavafx/scene/control/ButtonType;

    .line 64
    new-instance v0, Ljavafx/scene/control/ButtonType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "Dialog.cancel.button"

    .line 65
    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/ButtonBar$ButtonData;->CANCEL_CLOSE:Ljavafx/scene/control/ButtonBar$ButtonData;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/ButtonType;-><init>(Ljava/lang/String;Ljavafx/scene/control/ButtonBar$ButtonData;)V

    sput-object v0, Ljavafx/scene/control/ButtonType;->CANCEL:Ljavafx/scene/control/ButtonType;

    .line 71
    new-instance v0, Ljavafx/scene/control/ButtonType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "Dialog.close.button"

    .line 72
    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/ButtonBar$ButtonData;->CANCEL_CLOSE:Ljavafx/scene/control/ButtonBar$ButtonData;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/ButtonType;-><init>(Ljava/lang/String;Ljavafx/scene/control/ButtonBar$ButtonData;)V

    sput-object v0, Ljavafx/scene/control/ButtonType;->CLOSE:Ljavafx/scene/control/ButtonType;

    .line 78
    new-instance v0, Ljavafx/scene/control/ButtonType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "Dialog.yes.button"

    .line 79
    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/ButtonBar$ButtonData;->YES:Ljavafx/scene/control/ButtonBar$ButtonData;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/ButtonType;-><init>(Ljava/lang/String;Ljavafx/scene/control/ButtonBar$ButtonData;)V

    sput-object v0, Ljavafx/scene/control/ButtonType;->YES:Ljavafx/scene/control/ButtonType;

    .line 85
    new-instance v0, Ljavafx/scene/control/ButtonType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "Dialog.no.button"

    .line 86
    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/ButtonBar$ButtonData;->NO:Ljavafx/scene/control/ButtonBar$ButtonData;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/ButtonType;-><init>(Ljava/lang/String;Ljavafx/scene/control/ButtonBar$ButtonData;)V

    sput-object v0, Ljavafx/scene/control/ButtonType;->NO:Ljavafx/scene/control/ButtonType;

    .line 92
    new-instance v0, Ljavafx/scene/control/ButtonType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "Dialog.finish.button"

    .line 93
    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/ButtonBar$ButtonData;->FINISH:Ljavafx/scene/control/ButtonBar$ButtonData;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/ButtonType;-><init>(Ljava/lang/String;Ljavafx/scene/control/ButtonBar$ButtonData;)V

    sput-object v0, Ljavafx/scene/control/ButtonType;->FINISH:Ljavafx/scene/control/ButtonType;

    .line 99
    new-instance v0, Ljavafx/scene/control/ButtonType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "Dialog.next.button"

    .line 100
    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/ButtonBar$ButtonData;->NEXT_FORWARD:Ljavafx/scene/control/ButtonBar$ButtonData;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/ButtonType;-><init>(Ljava/lang/String;Ljavafx/scene/control/ButtonBar$ButtonData;)V

    sput-object v0, Ljavafx/scene/control/ButtonType;->NEXT:Ljavafx/scene/control/ButtonType;

    .line 106
    new-instance v0, Ljavafx/scene/control/ButtonType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "Dialog.previous.button"

    .line 107
    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/ButtonBar$ButtonData;->BACK_PREVIOUS:Ljavafx/scene/control/ButtonBar$ButtonData;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/ButtonType;-><init>(Ljava/lang/String;Ljavafx/scene/control/ButtonBar$ButtonData;)V

    sput-object v0, Ljavafx/scene/control/ButtonType;->PREVIOUS:Ljavafx/scene/control/ButtonType;

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "text"
        .end annotation
    .end param

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonType;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Ljavafx/scene/control/ButtonBar$ButtonData;->OTHER:Ljavafx/scene/control/ButtonBar$ButtonData;

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/ButtonType;-><init>(Ljava/lang/String;Ljavafx/scene/control/ButtonBar$ButtonData;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/control/ButtonBar$ButtonData;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "text"
        .end annotation
    .end param
    .param p2    # Ljavafx/scene/control/ButtonBar$ButtonData;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "buttonData"
        .end annotation
    .end param

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonType;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "buttonData":Ljavafx/scene/control/ButtonBar$ButtonData;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 134
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/ButtonType;->text:Ljava/lang/String;

    .line 135
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/control/ButtonType;->buttonData:Ljavafx/scene/control/ButtonBar$ButtonData;

    .line 136
    return-void
.end method


# virtual methods
.method public final getButtonData()Ljavafx/scene/control/ButtonBar$ButtonData;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonType;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ButtonType;->buttonData:Ljavafx/scene/control/ButtonBar$ButtonData;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ButtonType;
    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonType;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ButtonType;->text:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ButtonType;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonType;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ButtonType [text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ButtonType;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", buttonData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ButtonType;->getButtonData()Ljavafx/scene/control/ButtonBar$ButtonData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ButtonType;
    return-object v0
.end method
