//
//  QiitaInfraError.swift
//  QiitaDomainInterface
//
//  Created by 林達也 on 2015/12/08.
//  Copyright © 2015年 jp.sora0077. All rights reserved.
//

import Foundation
import QiitaKit

public enum QiitaInfraError: ErrorType {
    
    case QiitaAPIError(QiitaKitError)
    case RealmError(NSError)
}